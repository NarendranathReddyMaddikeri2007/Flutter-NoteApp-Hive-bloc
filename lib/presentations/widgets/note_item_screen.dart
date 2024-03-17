import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
                      child: Text('${note.title}',
                          maxLines: 1,
                          style: globalDarkTheme.textTheme.displayMedium),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${note.description}',
                        maxLines: 2,
                        style: globalDarkTheme.textTheme.bodyLarge),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(getDateFormat(dateTime: note.date),
                        maxLines: 1, style: globalDarkTheme.textTheme.bodyLarge)
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
      // return GridView.count(
      //   crossAxisCount: (width/150).toInt(),
      //   crossAxisSpacing: 12,
      //   mainAxisSpacing: 8,
      //   children: noteList
      //       .map<NoteGridItemWidget>((note) => NoteGridItemWidget(note: note))
      //       .toList(),
      // );
    }
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
            // width: (width / 2) - 50,
            // height: height * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${note.title}',
                    maxLines: 1,
                    style: globalDarkTheme.textTheme.displayMedium),
                Text('${note.description}',
                    maxLines: 6, style: globalDarkTheme.textTheme.bodyLarge),
                Text('${getDateFormat(dateTime: note.date)}',
                    maxLines: 1, style: globalDarkTheme.textTheme.labelSmall)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
