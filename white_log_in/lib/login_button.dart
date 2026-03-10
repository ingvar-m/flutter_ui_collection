import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {

  final VoidCallback onPressed;

  const LoginButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF3461FD),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14)
            ),
            padding: EdgeInsets.symmetric(vertical: 18),
            elevation: 0
          ),
          child: Text(
            "Log In",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),
          )
      ),
    );
  }
}
