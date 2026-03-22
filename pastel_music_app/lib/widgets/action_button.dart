import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastel_music_app/constants/app_colors.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double size;

  const ActionButton({super.key, required this.icon, required this.onPressed, required this.size});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
            icon,
          size: size,
        ),
      style: IconButton.styleFrom(
        backgroundColor: AppColors.primaryAccent,
        padding: const EdgeInsets.all(8),
        foregroundColor: Colors.white,
      ),
    );
  }
}
