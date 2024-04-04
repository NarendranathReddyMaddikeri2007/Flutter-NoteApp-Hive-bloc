import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/applications/homeBloc/bloc/home_bloc.dart';
import 'package:note_app1/applications/layoutBloc/bloc/layout_bloc.dart';
import 'package:note_app1/applications/themeBloc/bloc/theme_bloc.dart';
import 'package:note_app1/core/enum.dart';
import 'package:note_app1/presentations/widgets/note_item_screen.dart';
import 'package:note_app1/presentations/widgets/notes_form_screen.dart';

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
        title: const Text('Note App'),
        actions: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return PopupMenuButton(
                
                child: const Icon(
                  (Icons.sort),
                ),
                onSelected: (value) {
                  switch (value) {
                    case AppSort.date: BlocProvider.of<HomeBloc>(context).add(const SortByDate());
                    case AppSort.description:BlocProvider.of<HomeBloc>(context).add(const SortByDescription());
                    case AppSort.title:BlocProvider.of<HomeBloc>(context).add(const SortByTitle());
                    default:
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  const PopupMenuItem(value: AppSort.date, child: Text('Date')),
                  const PopupMenuItem(value: AppSort.title, child: Text('Title')),
                  const PopupMenuItem(value: AppSort.description, child: Text('Description'))
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
          PopupMenuButton(
            child: const Icon(
              (Icons.language),
            ),
            onSelected: (value) {
              switch (value) {
                case 'te':
                case 'ta':
                case 'hi':
                default:
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(value: "en", child: Text('English')),
              const PopupMenuItem(value: "te", child: Text('Telugu')),
              const PopupMenuItem(value: "ta", child: Text('Tamil')),
              const PopupMenuItem(value: "hi", child: Text('Hindi')),
            ],
          ),
          BlocBuilder<LayoutBloc, LayoutState>(
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  if (state.appLayout == AppLayout.listLayout) {
                    BlocProvider.of<LayoutBloc>(context).add(
                        const ChangeLayout(appLayout: AppLayout.listLayout));
                  } else {
                    BlocProvider.of<LayoutBloc>(context).add(
                        const ChangeLayout(appLayout: AppLayout.gridLayout));
                  }
                },
                icon: Icon(state.appLayout == AppLayout.gridLayout
                    ? Icons.grid_view
                    : Icons.format_list_bulleted),
              );
            },
          ),
          PopupMenuButton<int>(
            itemBuilder: (context) => const [
              PopupMenuItem(value: 0, child: Text('Feedback')),
              PopupMenuItem(value: 1, child: Text('Share App')),
              PopupMenuItem(value: 2, child: Text('Developer')),
              PopupMenuItem(value: 3, child: Text('More Apps')),
            ],
            onSelected: (value) {
              switch (value) {
                case 0:
                  {
                    print('Feedback menu is clicked');
                  }
                case 1:
                  {
                    print('Share App menu is clicked');
                  }
                case 2:
                  {
                    print('Developer menu is clicked');
                  }
                case 3:
                  {
                    print('More Apps menu is clicked');
                  }
              }
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: 'Add Note',
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
}
