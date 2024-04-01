part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({required ThemeMode themeMode}) = _ThemeState;
   factory ThemeState.initial(){
     return const ThemeState(themeMode: ThemeMode.light
    );
  }
}


/*
ORIGINAL 


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
*/
