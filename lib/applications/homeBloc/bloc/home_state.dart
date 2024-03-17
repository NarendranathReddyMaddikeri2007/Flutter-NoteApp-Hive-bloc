part of 'home_bloc.dart';



@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required List<NoteModel> notesModelList,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
      isLoading: false,
      notesModelList: [],
    );
  }
}
