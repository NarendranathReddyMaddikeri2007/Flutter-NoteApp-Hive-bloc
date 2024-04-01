part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.changeTheme({required ThemeMode themeMode}) = ChangeTheme;
}


/*
ORIGINAL

part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getNotes() = GetNotes;
  const factory HomeEvent.updateNote({required NoteModel note}) = UpdateNote;
  const factory HomeEvent.addNote({required NoteModel note}) = AddNote;
  const factory HomeEvent.deleteNote({required int id}) = DeleteNote;
}
*/