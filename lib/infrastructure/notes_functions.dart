


import 'package:flutter/src/material/app.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app1/domain/home/model/note_model.dart';
import 'package:note_app1/domain/home/note_model_services.dart';

const dbName = 'notes-database';

@LazySingleton(as: NotesModelServices)
class NotesFunctions implements NotesModelServices {
  // delete note from hive using key
  @override
  Future<void> deleteNote(int id) async {
    final box = await Hive.openBox<NoteModel>(dbName);
    await box.delete(id);
  }

  // get notes as list of notemodel
  @override
  Future<List<NoteModel>> getNotes() async {
    final box = await Hive.openBox<NoteModel>(dbName);
    return box.values.toList();
    
  }

  // insert note to hive 
  @override
  Future<void> insertNote(NoteModel note) async {
    final box = await Hive.openBox<NoteModel>(dbName);
    var newNote = note;
    // take key as id
    final int id =await box.add(newNote);
    // add id to notemodel
    newNote.id=id;
    // log(newNote.id.toString());
    // save
    newNote.save();

  }
  // update note from hive using key as id
  @override
  Future<void> updateNote(NoteModel note,) async {
    final box = await Hive.openBox<NoteModel>(dbName);
    // here old key == id, note(updated note)
    await box.put(note.id, note);
  }


  int getThemeCode({required ThemeMode theme}){
       switch(theme){
           case ThemeMode.dark: return 0;
           default: return 1;
       }
  }
}
