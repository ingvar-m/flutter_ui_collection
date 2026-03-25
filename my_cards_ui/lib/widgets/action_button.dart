import 'package:flutter/material.dart';
import 'package:my_card_ui/constants/app_colors.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const ActionButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42,
      height: 42,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.actionButtonColor,
          foregroundColor: Colors.white,
          side: BorderSide(
            width: 1,
            color: AppColors.actionButtonStrokeColor
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.zero,
          minimumSize: const Size(0, 0)
        ),
        child: Icon(
            icon,
            size: 22,
        ),
      ),
    );
  }
}
