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
    // Get all notes
    on<GetNotes>((event, emit) async {
      //emit(state.copyWith(isLoading: true));
      final result = await _noteModelService.getNotes();
      emit(HomeState(isLoading: false, notesModelList: result));
    });

    on<SortByDate>((event, emit) async {
      final notes = await _noteModelService.getNotes();
      notes.sort((n1, n2) => n1.date.compareTo(n2.date));
      emit(HomeState(isLoading: false, notesModelList: notes));
    });

    on<SortByDescription>((event, emit) async {
      final notes = await _noteModelService.getNotes();
      notes.sort((n1, n2) => n1.description.compareTo(n2.description));
      emit(HomeState(isLoading: false, notesModelList: notes));
    });

    on<SortByTitle>((event, emit) async {
      final notes = await _noteModelService.getNotes();
      notes.sort((n1, n2) => n1.title.compareTo(n2.title));
      emit(HomeState(isLoading: false, notesModelList: notes));
    });

    // add notes to hive
    on<AddNote>((event, emit) async {
      // emit(
      //   state.copyWith(isLoading: true),
      // );
      await _noteModelService.insertNote(event.note);
      final result = await _noteModelService.getNotes();
      emit(HomeState(isLoading: false, notesModelList: result));
    });

    // delete note from hive using key
    on<DeleteNote>((event, emit) async {
      // emit(
      //   state.copyWith(isLoading: true),
      // );
      await _noteModelService.deleteNote(event.id);
      final result = await _noteModelService.getNotes();
      emit(HomeState(isLoading: false, notesModelList: result));
    });

    // update note from hive
    on<UpdateNote>((event, emit) async {
      // emit(
      //   state.copyWith(isLoading: true),
      // );
      await _noteModelService.updateNote(event.note);
      final result = await _noteModelService.getNotes();
      emit(HomeState(isLoading: false, notesModelList: result));
    });
  }
}
