



import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app1/applications/homeBloc/bloc/home_bloc.dart';
import 'package:note_app1/domain/home/note_model_services.dart';
import 'package:note_app1/infrastructure/notes_functions.dart';

extension GetItInjectableX on GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  GetIt init({
    String? environment,
    EnvironmentFilter? environmentFilter,
  }) {
    final gh = GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<NotesModelServices>(() => NotesFunctions());
    gh.factory<HomeBloc>(() => HomeBloc(gh<NotesModelServices>()));
    return this;
  }
}