import 'package:flutter/material.dart';

class CustomIconAppbar extends StatelessWidget {
  const CustomIconAppbar({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.05),
      ),
      child: Center(
          child: IconButton(
        icon: Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
        onPressed: onPressed,
      )),
    );
  }
}
