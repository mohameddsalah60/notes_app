import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import '../../models/note_model.dart';
import 'notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>? noteList = BlocProvider.of<NotesCubit>(context).list;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: noteList!.isNotEmpty
              ? ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: noteList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return NotesItem(
                      noteModel: noteList[index],
                    );
                  },
                )
              : const Center(
                  child: Text(
                  'add Note',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                )),
        );
      },
    );
  }
}
