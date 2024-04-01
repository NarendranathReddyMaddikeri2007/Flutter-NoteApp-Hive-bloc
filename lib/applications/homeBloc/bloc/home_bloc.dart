import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app1/domain/home/model/note_model.dart';
import 'package:note_app1/domain/home/note_model_services.dart';

part 'home_event.dart';
part 'home_state.dart';

//flutter pub run build_runner watch --delete-conflicting-outputs
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NotesModelServices _noteModelService;

  
  
  HomeBloc(this._noteModelService) : super(HomeState.initial()) {
    on<GetNotes>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await _noteModelService.getNotes();
      emit(HomeState(
          isLoading: false,
          notesModelList: result));
    });


    // add notes to hive
    on<AddNote>((event, emit) async {
      // emit(
      //   state.copyWith(isLoading: true),
      // );
      await _noteModelService.insertNote(event.note);
      final result = await _noteModelService.getNotes();
      emit(HomeState(
          isLoading: false,
          notesModelList: result));
    });

    // delete note from hive using key
    on<DeleteNote>((event, emit) async {
      // emit(
      //   state.copyWith(isLoading: true),
      // );
      await _noteModelService.deleteNote(event.id);
      final result = await _noteModelService.getNotes();
      emit(HomeState(
          isLoading: false,
          notesModelList: result));
    });

    // update note from hive
    on<UpdateNote>((event, emit) async {
      // emit(
      //   state.copyWith(isLoading: true),
      // );
      await _noteModelService.updateNote(event.note);
      final result = await _noteModelService.getNotes();
      emit(HomeState(
          isLoading: false,
          notesModelList: result));
    });
  }
}
