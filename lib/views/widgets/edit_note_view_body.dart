import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_appbar_widget.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import 'edit_note_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppbarWidget(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subtitle = subtitle ?? widget.noteModel.subtitle;
              widget.noteModel.save();

              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            hintText: widget.noteModel.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: widget.noteModel.subtitle,
            maxLines: 6,
            onChanged: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          EditNoteColorsList(
            noteModel: widget.noteModel,
          ),
        ],
      ),
    );
  }
}
