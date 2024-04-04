//flutter pub run build_runner build

part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getNotes() = GetNotes;
  const factory HomeEvent.updateNote({required NoteModel note}) = UpdateNote;
  const factory HomeEvent.addNote({required NoteModel note}) = AddNote;
  const factory HomeEvent.deleteNote({required int id}) = DeleteNote;
  const factory HomeEvent.sortByDate() = SortByDate;
  const factory HomeEvent.sortByTitle() = SortByTitle;
  const factory HomeEvent.sortByDescription() = SortByDescription;
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

/*
part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.fetchCityWeather(String city) = _FetchCityWeather;
  const factory HomeEvent.fetchLocationWeather() = _FetchLocationWeather;
}

*/