import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class SecondaryButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const SecondaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 13),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(54),
                side: BorderSide(
                  width: 1,
                  color: AppColors.primaryColor
                )
              ),
              elevation: 0,
            overlayColor: AppColors.primaryColor,
              animationDuration: Duration(milliseconds: 150)
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor
            ),
          )
      ),
    );
  }
}
