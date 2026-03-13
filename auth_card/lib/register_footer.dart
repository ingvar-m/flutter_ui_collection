import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterFooter extends StatelessWidget {
  const RegisterFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          children: [
            TextSpan(text: "if you don’t an account\nyou can "),
            TextSpan(
                text: "Register here!",
                style: TextStyle(
                    color: const Color(0xFF4461F2),
                    fontWeight: FontWeight.bold
                ),
              recognizer: TapGestureRecognizer()..onTap = () {}
            ),
          ]
        )
    );
  }
}
