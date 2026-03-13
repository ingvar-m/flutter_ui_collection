import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String iconPath;

  const SocialButton({super.key, required this.onPressed, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: 0,
            padding: EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          child: Image.asset(
              iconPath,
            width: 28,
            height: 28,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.image_not_supported);
            },
          )
      ),
    );
  }
}
