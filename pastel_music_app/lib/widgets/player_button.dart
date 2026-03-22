import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class PlayerButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const PlayerButton({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,

      icon: Icon(icon, size: 32),
      style: IconButton.styleFrom(
        padding: const EdgeInsets.all(12),
        foregroundColor: AppColors.primaryAccent,
      ),
    );
  }
}
