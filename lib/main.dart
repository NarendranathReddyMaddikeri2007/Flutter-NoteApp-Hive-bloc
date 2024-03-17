import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app1/applications/homeBloc/bloc/home_bloc.dart';
import 'package:note_app1/core/theme_files.dart';
import 'package:note_app1/domain/di/injectable.dart';
import 'package:note_app1/domain/home/model/note_model.dart';
import 'package:note_app1/presentations/home_screen.dart';

//Main file
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // configure injectable
  await configureInjectable();
  // initialize hive
  await Hive.initFlutter();
  // check adapter registered, if not register it
  if (!Hive.isAdapterRegistered(NoteModelAdapter().typeId)) {
    Hive.registerAdapter(NoteModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return getIt<HomeBloc>();
      },
      
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        darkTheme: globalDarkTheme,
        theme: globalLightTheme,
        
        themeAnimationDuration: const Duration(seconds: 5),
        scrollBehavior: const MaterialScrollBehavior(),
        home: HomeScreen(),
      ),
    );
  }
}
