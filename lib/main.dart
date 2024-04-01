import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app1/applications/homeBloc/bloc/home_bloc.dart';
import 'package:note_app1/applications/layoutBloc/bloc/layout_bloc.dart';
import 'package:note_app1/applications/themeBloc/bloc/theme_bloc.dart';
import 'package:note_app1/core/theme_files.dart';
import 'package:note_app1/domain/di/injectable.dart';
import 'package:note_app1/domain/home/model/note_model.dart';
import 'package:note_app1/presentations/home_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(NoteModelAdapter().typeId)) {
    Hive.registerAdapter(NoteModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return getIt<HomeBloc>();
          },
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => LayoutBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return _buildWithTheme(context,state);
        },
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: BlocProvider.of<ThemeBloc>(context).state.themeMode,
      darkTheme: globalDarkTheme,
      theme: globalLightTheme,
      scrollBehavior: const MaterialScrollBehavior(),
      home: HomeScreen(),
    );
  }
}
