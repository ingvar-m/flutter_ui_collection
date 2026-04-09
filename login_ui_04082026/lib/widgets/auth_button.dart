import 'package:flutter/material.dart';
import 'package:login_ui_04082026/constants/app_colors.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final String pathImage;
  final VoidCallback onPressed;

  const AuthButton({
    super.key,
    required this.text,
    required this.pathImage,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(color: Color(0xFFEFF0F6), width: 1),
        elevation: 0,
        backgroundColor: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(pathImage, width: 18),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
