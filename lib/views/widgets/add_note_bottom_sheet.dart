import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 36,
              ),
              CustomTextField(
                hintText: 'title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hintText: 'content',
                maxLines: 6,
              ),
              SizedBox(
                height: 32,
              ),
              CustomButton(),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
