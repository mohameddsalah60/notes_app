import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 150, 157, 196),
      ),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
