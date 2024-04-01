


import 'package:note_app1/domain/home/model/note_model.dart';

abstract class NotesModelServices {
  Future <List<NoteModel>> getNotes();
  Future <void> insertNote(NoteModel note);
  Future <void> updateNote(NoteModel note);
  Future <void> deleteNote(int id);
 // Future<void> changeTheme(ThemeMode newTheme);
}