import 'package:flutter/material.dart';
import 'package:product_card_04112026/constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(54)
            ),
            elevation: 0,
            overlayColor: Colors.white,
            animationDuration: Duration(milliseconds: 150)
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),
          )
      ),
    );
  }
}
