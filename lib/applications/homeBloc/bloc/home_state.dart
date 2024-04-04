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

  factory HomeState.sortByDate() {
    return const HomeState(isLoading: false, notesModelList: []);
  }
  factory HomeState.sortByTitle() {
    return const HomeState(isLoading: false, notesModelList: []);
  }

  factory HomeState.sortByDescription() {
    return const HomeState(isLoading: false, notesModelList: []);
  }
}

/*
ORIGINAL 

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
*/



/*
part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.initialLoading() = _InitialLoading;
  const factory HomeState.initialFail(String error) = _InitialFail;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.fail(String error) = _Fail;
  const factory HomeState.success(Weather weather) = _Success;
}

*/