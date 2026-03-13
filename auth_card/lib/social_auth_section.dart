import 'package:auth_card/social_button.dart';
import 'package:flutter/material.dart';

class SocialAuthSection extends StatelessWidget {
  const SocialAuthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: Color(0xFFDFDFDF),
              ),
            ),
            const SizedBox(width: 6,),
            Text(
              "Or continue with",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFFACADAC)
              ),
            ),
            const SizedBox(width: 6,),
            Expanded(
              child: Divider(
                thickness: 1,
                color: Color(0xFFDFDFDF),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40,),
        Row(
          children: [
            Expanded(child: SocialButton(onPressed: () {}, iconPath: 'assets/icons/apple.png')),
            const SizedBox(width: 25,),
            Expanded(child: SocialButton(onPressed: () {}, iconPath: 'assets/icons/facebook.png')),
            const SizedBox(width: 25,),
            Expanded(child: SocialButton(onPressed: () {}, iconPath: 'assets/icons/google.png')),
          ],
        )
      ],
    );
  }
}
