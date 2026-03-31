import 'package:flutter/material.dart';
import 'package:login_screen_032926/constants/app_colors.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final String pathIcon;
  final VoidCallback onPressed;

  const SocialButton({
    super.key,
    required this.text,
    required this.pathIcon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.socialButtonColor,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(vertical: 12)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(pathIcon, width: 16, height: 16),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(fontSize: 14, color: AppColors.primaryTextColor),
          ),
        ],
      ),
    );
  }
}
