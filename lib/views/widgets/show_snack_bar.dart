import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text,
    {Color color = Colors.red}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    ),
  );
}
