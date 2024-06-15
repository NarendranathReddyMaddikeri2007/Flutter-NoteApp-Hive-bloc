import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/applications/homeBloc/bloc/home_bloc.dart';
import 'package:note_app1/core/enum.dart';
import 'package:note_app1/domain/home/model/note_model.dart';
import 'package:note_app1/presentations/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotesFormScreen extends StatelessWidget {
  NotesFormScreen({super.key, required this.type, this.note});

  final ActionType type;
  final NoteModel? note;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  late double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    if (type == ActionType.editNote) {
      if (note!.key == null) {
        Navigator.of(context).pop();
      }
      if (note == null) {
        Navigator.of(context).pop();
      } else {
        _titleController.text = note!.title ?? 'No Title';
        _descriptionController.text = note!.description ?? 'No description';
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.homescreen_note_app),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        children: [
          // SegmentedButton(
          //   emptySelectionAllowed: true,
          //   segments: const <ButtonSegment<AppTags>>[
          //     ButtonSegment<AppTags>(
          //       value: AppTags.password,
          //       label: Text('Day'),
          //     ),
          //     ButtonSegment<AppTags>(
          //       value: AppTags.links,
          //       label: Text('Week'),
          //     ),
          //     ButtonSegment<AppTags>(
          //       value: AppTags.note,
          //       label: Text('Month'),
          //     ),
          //   ],
          //   selected: const <AppTags>{},
          // ),
          TextFormField(
            controller: _titleController,
            decoration: InputDecoration(
              hintText:
                  AppLocalizations.of(context)!.notescreen_enter_title_here,
            ),
            minLines: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _descriptionController,
            decoration: InputDecoration(
              hintText: AppLocalizations.of(context)!
                  .notescreen_enter_description_here,
            ),
            maxLines: 10,
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () {
                      final title = _titleController.value.text;
                      final description = _descriptionController.value.text;
                      final DateTime date = DateTime.now();

                      if (title.isEmpty || description.isEmpty) {
                        return;
                      }

                      if (type == ActionType.addNote) {
                        final NoteModel newNote = NoteModel(
                          title: title,
                          description: description,
                          date: date,
                        );
                        context.read<HomeBloc>().add(AddNote(note: newNote));
                      } else {
                        final NoteModel newNote = NoteModel(
                          id: note!.key,
                          title: title,
                          description: description,
                          date: type == ActionType.addNote
                              ? note!.date
                              : DateTime.now(),
                        );
                        context.read<HomeBloc>().add(UpdateNote(note: newNote));
                      }
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (ctx) => HomeScreen()),
                        (route) => false,
                      );
                    },
                    child: Text(
                        type == ActionType.editNote
                            ? AppLocalizations.of(context)!
                                .notescreen_update_note
                            : AppLocalizations.of(context)!.notescreen_add_note,
                        style: Theme.of(context).textTheme.labelSmall)),
                Visibility(
                    visible: type == ActionType.editNote,
                    child: TextButton(
                        onPressed: () {
                          final noteId = note?.id;
                          if (noteId != null) {
                            context
                                .read<HomeBloc>()
                                .add(DeleteNote(id: noteId));
                          }
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (ctx) => HomeScreen()),
                            (route) => false,
                          );
                        },
                        child: Text(AppLocalizations.of(context)!
                            .notescreen_delete_note))),
              ],
            ),
          )
        ],
      ),
    );
  }
}

/*
                icon: type == ActionType.editNote
                    ? const Icon(Icons.update)
                    : const Icon(Icons.save),
*/