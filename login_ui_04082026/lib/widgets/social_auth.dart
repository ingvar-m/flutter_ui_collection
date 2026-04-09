import 'package:flutter/material.dart';
import 'package:login_ui_04082026/constants/app_colors.dart';
import 'package:login_ui_04082026/widgets/auth_button.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: AppColors.primaryStrokeColor,
                radius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(width: 16,),
            Text(
              'Or',
              style: TextStyle(
                color: AppColors.secondaryStrokeColor,
                fontSize: 12
              ),
            ),
            const SizedBox(width: 16,),
            Expanded(
              child: Divider(
                thickness: 1,
                color: AppColors.primaryStrokeColor,
                radius: BorderRadius.circular(12),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16,),
        AuthButton(
            text: "Continue with Google",
            pathImage: 'assets/images/google.png',
            onPressed: () {}
        ),
        const SizedBox(height: 16,),
        AuthButton(
            text: "Continue with Facebook",
            pathImage: 'assets/images/facebook_icon.png',
            onPressed: () {}
        ),
      ],
    );
  }
}
