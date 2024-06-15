import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app1/applications/homeBloc/bloc/home_bloc.dart';
import 'package:note_app1/applications/layoutBloc/bloc/layout_bloc.dart';
import 'package:note_app1/applications/localeBloc/bloc/locale_bloc.dart';
import 'package:note_app1/applications/themeBloc/bloc/theme_bloc.dart';
import 'package:note_app1/core/constant_values.dart';
import 'package:note_app1/core/theme_files.dart';
import 'package:note_app1/domain/di/injectable.dart';
import 'package:note_app1/domain/home/model/note_model.dart';
import 'package:note_app1/presentations/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        BlocProvider(
          create: (context) => LocaleBloc(),
        ),
      ],
      child: BlocBuilder<LocaleBloc, LocaleState>(//ThemeBloc, ThemeState
        builder: (localeContext, localeState) {//themeContext, themeState
          return BlocBuilder<ThemeBloc, ThemeState>(
            builder: (themeContext, themeState) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                themeMode:
                    BlocProvider.of<ThemeBloc>(themeContext).state.themeMode,
                darkTheme: globalDarkTheme,
                theme: globalLightTheme,
                locale: localeMap[
                    BlocProvider.of<LocaleBloc>(localeContext).state.appLocale],
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en'), // English
                  Locale('el'), // Greek
                  Locale('te'), //Telugu
                  Locale('ta'), //Tamil
                ],
                scrollBehavior: const MaterialScrollBehavior(),
                home: HomeScreen(),
              );
            },
          );
        },
      ),
    );
  }
}
