import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class SecondaryButton extends StatelessWidget {

  final String title;
  final VoidCallback onPressed;

  const SecondaryButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor.withValues(alpha: 0.02),
            foregroundColor: AppColors.primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 18),
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: AppColors.primaryColor.withValues(alpha: 0.3)
              )
            ),
          overlayColor: AppColors.primaryColor.withValues(alpha: 0.3)
        ),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600
          ),
        )
    );
  }
}
