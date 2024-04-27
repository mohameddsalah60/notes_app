import 'package:flutter/material.dart';

import 'custom_icon_appbar.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget(
      {super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        CustomIconAppbar(
          icon: icon,
        ),
      ],
    );
  }
}
