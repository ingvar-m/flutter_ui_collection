import 'package:flutter/material.dart';

class RecoverPasswordButton extends StatelessWidget {
  const RecoverPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero
        ),
        child: Text(
            "Recover Password ?",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: const Color(0xFFC7C7C7)
          ),
        )
    );
  }
}
