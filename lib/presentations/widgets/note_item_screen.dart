import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_app1/applications/layoutBloc/bloc/layout_bloc.dart';
import 'package:note_app1/core/constant_values.dart';
import 'package:note_app1/core/enum.dart';
import 'package:note_app1/core/theme_files.dart';
import 'package:note_app1/domain/home/model/note_model.dart';
import 'package:note_app1/presentations/widgets/notes_form_screen.dart';

class NoteListLayoutWidget extends StatelessWidget {
  NoteListLayoutWidget(
      {super.key, required this.noteList, required this.isListView});

  final bool isListView;
  final List<NoteModel> noteList;
  late double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return BlocBuilder<LayoutBloc, LayoutState>(
      builder: (context, state) {
        switch (state.appLayout) {
          case AppLayout.gridLayout:
            return MasonryGridView.count(
              crossAxisCount: (width / 150).floor(),
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemCount: noteList.length,
              itemBuilder: (context, index) {
                final note = noteList[index];
                return NoteGridItemWidget(note: note);
              },
            );
          case AppLayout.listLayout:
            return ListView.builder(
              itemCount: noteList.length,
              itemBuilder: (context, index) {
                final NoteModel note = noteList[index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return NotesFormScreen(
                        type: ActionType.editNote,
                        note: note,
                      );
                    }));
                  },
                  child: Card(
                    child: SizedBox(
                      width: width * 0.95,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 20, right: 20),
                        child: Column(
                          children: [
                            Text(note.title,
                                maxLines: 1,
                                style: Theme.of(context).textTheme.titleMedium),
                            Text(note.description,
                                maxLines: 1,
                                style: Theme.of(context).textTheme.bodyLarge),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              getDateFormat(dateTime: note.date),
                              
                              style:  Theme.of(context).textTheme.labelSmall,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          default:
            return const Center(
              child: Text('Loading...'),
            );
        }
      },
    );
  }
}

class NoteGridItemWidget extends StatelessWidget {
  NoteGridItemWidget({super.key, required this.note});

  final NoteModel note;
  late double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
          return NotesFormScreen(
            type: ActionType.editNote,
            note: note,
          );
        }));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(note.title,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(
                  height: 5,
                ),
                Text(note.description,
                    maxLines: 6, style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(
                  height: 5,
                ),
                Text(getDateFormat(dateTime: note.date),
                    maxLines: 1, style: Theme.of(context).textTheme.labelSmall)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
