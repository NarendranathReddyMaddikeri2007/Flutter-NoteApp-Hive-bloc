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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Center(
                                  child: SizedBox(
                                    width: 150,
                                    child: Text(note.title,
                                        maxLines: 1,
                                        style: globalDarkTheme
                                            .textTheme.displayMedium),
                                  ),
                                )),
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, bottom: 3),
                                    decoration:  const BoxDecoration(
                                      boxShadow: [BoxShadow(color: Colors.orange, blurRadius: 1.6)],
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10)),
                                        color: Color(0xff3487a5)),
                                    child:
                                        Text(getDateFormat(dateTime: note.date), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: Text(note.description,
                                maxLines: 2,
                                style: Theme.of(context).textTheme.labelSmall),
                          ),
                          const SizedBox(height: 15,)
                          // const SizedBox(
                          //   height: 2,
                          // ),
                          // Text(getDateFormat(dateTime: note.date),
                          //     maxLines: 1,
                          //     style: Theme.of(context).textTheme.labelSmall)
                        ],
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
                    style: globalDarkTheme.textTheme.displayMedium),
                const SizedBox(
                  height: 5,
                ),
                Text(note.description,
                    maxLines: 6, style: globalDarkTheme.textTheme.bodyLarge),
                const SizedBox(
                  height: 5,
                ),
                Text(getDateFormat(dateTime: note.date),
                    maxLines: 1, style: globalDarkTheme.textTheme.labelSmall)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*

          if (isListView) {
      return ListView.builder(
        itemCount: noteList.length,
        itemBuilder: (context, index) {
          final NoteModel note = noteList[index];
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
              margin:
                  const EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
              child: Container(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, right: 18, left: 18),
                width: width,
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 120,
                      child: Text(note.title,
                          maxLines: 1,
                          style: globalDarkTheme.textTheme.displayMedium),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(note.description,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.labelSmall),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(getDateFormat(dateTime: note.date),
                        maxLines: 1, style: Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
              ),
            ),
          );
        },
      );
    } else {
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
    }

          // return GridView.count(
      //   crossAxisCount: (width/150).toInt(),
      //   crossAxisSpacing: 12,
      //   mainAxisSpacing: 8,
      //   children: noteList
      //       .map<NoteGridItemWidget>((note) => NoteGridItemWidget(note: note))
      //       .toList(),
      // );

*/
