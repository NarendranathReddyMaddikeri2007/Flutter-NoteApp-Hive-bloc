part of 'home_bloc.dart';


//flutter pub run build_runner build
@freezed
class HomeEvent with _$HomeEvent {
    const factory HomeEvent.getNotes() = GetNotes;
  const factory HomeEvent.updateNote({required NoteModel note}) = UpdateNote;
  const factory HomeEvent.addNote({required NoteModel note}) = AddNote;
  const factory HomeEvent.deleteNote({required int id}) = DeleteNote;
  const factory HomeEvent.changeLocale({required StateType newLocale}) = ChangeLocale;
  //const factory HomeEvent.changeTheme() = ChangeTheme;
  //const factory HomeEvent.changeLayout() = ChangeLayout;
  // const factory HomeEvent.getTheme() = GetThemeEvent;
  // const factory HomeEvent.setTheme(StateType theme) = SetTheme;
  //   const factory HomeEvent.getLayout() = GetLayoutEvent;
  // const factory HomeEvent.setLayout(StateType theme) = SetLayout;
}
