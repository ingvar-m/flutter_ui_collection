import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback onPressed;

  const ActionButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        style: IconButton.styleFrom(
          backgroundColor: Color(0xFFF7F7F7),
          foregroundColor: Color(0xFF767676),
          padding: const EdgeInsets.all(8),
          elevation: 0,
            animationDuration: Duration(milliseconds: 150)
        ),
        icon: Icon(
            icon
        )
    );
  }
}
