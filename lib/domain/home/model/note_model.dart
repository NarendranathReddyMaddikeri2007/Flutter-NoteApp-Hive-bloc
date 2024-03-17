


import 'package:hive_flutter/adapters.dart';
part 'note_model.g.dart';
//flutter packages pub run build_runner build

@HiveType(typeId: 0)
class NoteModel extends HiveObject{

     @HiveField(0)
     final String title;

     @HiveField(1)
     final String description;

     @HiveField(2)
     final DateTime date;

     @HiveField(3)
     int? id;

     NoteModel({
      this.id,
      required this.title,
      required this.description,
      required this.date
     });

     @override
  String toString() {
    return 'title: $title desc:$description date:$date';
  }
}