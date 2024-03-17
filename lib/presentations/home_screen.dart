import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/applications/homeBloc/bloc/home_bloc.dart';
import 'package:note_app1/core/enum.dart';
import 'package:note_app1/domain/home/model/note_model.dart';
import 'package:note_app1/presentations/widgets/note_item_screen.dart';
import 'package:note_app1/presentations/widgets/notes_form_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  bool isListView = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const GetNotes());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dark_mode),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.language),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.grid_view),
          ),
          PopupMenuButton<int>(
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: 0,
                child: Text('Feedback')),
              PopupMenuItem(
                value: 1,
                child: Text('Share App')),
              PopupMenuItem(
                value: 2,
                child: Text('Developer')),
              PopupMenuItem(
                value: 3,
                child: Text('More Apps')),
            ],
            onSelected: (value) {
               switch(value){
                  case 0:{
                    print('Feedback menu is clicked');
                  }
                  case 1:{
                    print('Share App menu is clicked');
                  }
                  case 2:{
                    print('Developer menu is clicked');
                  }
                  case 3:{
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
