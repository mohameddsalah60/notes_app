import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: Text(
              'build your career with Mohamed Salah',
              style: TextStyle(
                color: Colors.black.withOpacity(.4),
                fontSize: 19,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 35,
              ),
            ),
          ),
          Text(
            'May 24 , 2024',
            style: TextStyle(
              color: Colors.black.withOpacity(.4),
            ),
          ),
        ],
      ),
    );
  }
}
