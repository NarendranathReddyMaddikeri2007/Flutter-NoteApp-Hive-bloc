import 'package:flutter/material.dart';
import 'package:note_app1/core/constant_values.dart';
import 'package:note_app1/core/enum.dart';
import 'package:note_app1/domain/home/model/note_model.dart';
import 'package:note_app1/presentations/widgets/notes_form_screen.dart';

class NoteExpandItem extends StatelessWidget {
  NoteExpandItem({super.key, required this.note});

  final NoteModel note;
  late double width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.95,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ExpansionTile(
            childrenPadding: const EdgeInsets.all(8),
            expandedAlignment: Alignment.center,
            trailing: InkWell(
              child: const Icon(Icons.edit),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return NotesFormScreen(
                    type: ActionType.editNote,
                    note: note,
                  );
                }));
              },
            ),
            title: Text(note.title,
                maxLines: 1, style: Theme.of(context).textTheme.titleMedium),
            subtitle: Text(getDateFormat(dateTime: note.date),
                maxLines: 1, style: Theme.of(context).textTheme.labelSmall),
            //
            //style: const TextStyle(color: Color.fromARGB(255, 176, 154, 118))),
            children: [
              Text(note.description,
                  maxLines: 5, style: Theme.of(context).textTheme.bodyLarge)
              //style: const TextStyle(color: Color.fromARGB(255, 176, 154, 118)))
            ],
          ),
        ),
      ),
    );
  }
}
