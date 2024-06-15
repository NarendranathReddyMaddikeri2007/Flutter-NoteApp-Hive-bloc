import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/applications/homeBloc/bloc/home_bloc.dart';
import 'package:note_app1/applications/layoutBloc/bloc/layout_bloc.dart';
import 'package:note_app1/applications/localeBloc/bloc/locale_bloc.dart';
import 'package:note_app1/applications/themeBloc/bloc/theme_bloc.dart';
import 'package:note_app1/core/enum.dart';
import 'package:note_app1/presentations/widgets/note_item_screen.dart';
import 'package:note_app1/presentations/widgets/notes_form_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  late ThemeMode theme;
  bool isListView = false;

  @override
  Widget build(BuildContext context) {
    theme = BlocProvider.of<ThemeBloc>(context).state.themeMode;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const GetNotes());
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.homescreen_note_app),
        actions: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return PopupMenuButton(
                child: const Icon(
                  (Icons.sort),
                ),
                onSelected: (value) {
                  switch (value) {
                    case AppSort.date:
                      BlocProvider.of<HomeBloc>(context)
                          .add(const SortByDate());
                    case AppSort.description:
                      BlocProvider.of<HomeBloc>(context)
                          .add(const SortByDescription());
                    case AppSort.title:
                      BlocProvider.of<HomeBloc>(context)
                          .add(const SortByTitle());
                    default:
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  PopupMenuItem(
                      value: AppSort.date,
                      child:
                          Text(AppLocalizations.of(context)!.homescreen_date)),
                  PopupMenuItem(
                      value: AppSort.title,
                      child:
                          Text(AppLocalizations.of(context)!.homescreen_title)),
                  PopupMenuItem(
                      value: AppSort.description,
                      child: Text(
                          AppLocalizations.of(context)!.homescreen_description))
                ],
              );
            },
          ),
          BlocBuilder<ThemeBloc, ThemeState>(
            buildWhen: (previous, current) =>
                previous.themeMode != current.themeMode,
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  if (state.themeMode == ThemeMode.dark) {
                    BlocProvider.of<ThemeBloc>(context)
                        .add(const ChangeTheme(themeMode: ThemeMode.dark));
                  } else if (state.themeMode == ThemeMode.light) {
                    BlocProvider.of<ThemeBloc>(context)
                        .add(const ChangeTheme(themeMode: ThemeMode.light));
                  }
                },
                icon: state.themeMode == ThemeMode.dark
                    ? const Icon(Icons.dark_mode)
                    : const Icon(Icons.light_mode),
              );
            },
          ),
          BlocBuilder<LocaleBloc, LocaleState>(
            builder: (context, state) {
              return PopupMenuButton(
                child: const Icon(
                  (Icons.language),
                ),
                onSelected: (value) {
                  switch (value) {
                    case 0:
                      BlocProvider.of<LocaleBloc>(context).add(
                          const ChangeLocale(
                              appLocale: AppLocale.teluguLocale));
                    case 1:
                      BlocProvider.of<LocaleBloc>(context).add(
                          const ChangeLocale(appLocale: AppLocale.greekLocale));
                    case 2:
                      BlocProvider.of<LocaleBloc>(context).add(
                          const ChangeLocale(
                              appLocale: AppLocale.englishLocale));
                    case 3:
                      BlocProvider.of<LocaleBloc>(context).add(
                          const ChangeLocale(appLocale: AppLocale.tamilLocale));
                    default:
                      BlocProvider.of<LocaleBloc>(context).add(
                          const ChangeLocale(
                              appLocale: AppLocale.englishLocale));
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  PopupMenuItem(
                      value: 0,
                      child: Text(
                          AppLocalizations.of(context)!.homescreen_telugu)),
                  PopupMenuItem(
                      value: 1,
                      child:
                          Text(AppLocalizations.of(context)!.homescreen_greek)),
                  PopupMenuItem(
                      value: 2,
                      child: Text(
                          AppLocalizations.of(context)!.homescreen_english)),
                  PopupMenuItem(
                      value: 3,
                      child:
                          Text(AppLocalizations.of(context)!.homescreen_tamil)),
                ],
              );
            },
          ),
          BlocBuilder<LayoutBloc, LayoutState>(
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  BlocProvider.of<LayoutBloc>(context)
                      .add(ChangeLayout(count: state.count + 1));
                },
                icon: Icon(getLayoutIcon(count: state.count)),
              );
            },
          ),
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                  value: 0,
                  child:
                      Text(AppLocalizations.of(context)!.homescreen_feedback)),
              PopupMenuItem(
                  value: 1,
                  child:
                      Text(AppLocalizations.of(context)!.homescreen_share_app)),
              PopupMenuItem(
                  value: 2,
                  child:
                      Text(AppLocalizations.of(context)!.homescreen_developer)),
              PopupMenuItem(
                  value: 3,
                  child:
                      Text(AppLocalizations.of(context)!.homescreen_more_apps)),
            ],
            onSelected: (value) {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: AppLocalizations.of(context)!.homescreen_add_note,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              return NotesFormScreen(
                type: ActionType.addNote,
              );
            }));
          },
          child: const Icon(Icons.create_sharp)),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return NoteListLayoutWidget(
                noteList: state.notesModelList, isListView: isListView);
          },
        ),
      ),
    );
  }

  IconData getLayoutIcon({required int count}) {
    switch (count) {
      case 1:
        return Icons.expand_rounded;
      case 0:
        return Icons.grid_view;
      default:
        return Icons.format_list_bulleted;
    }
  }
}
