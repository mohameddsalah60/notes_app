import 'package:flutter/material.dart';

import 'notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return const NotesItem();
        },
      ),
    );
  }
}
