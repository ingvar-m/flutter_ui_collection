import 'package:flutter/material.dart';

class LoginField extends StatefulWidget {
  final String text;
  final TextEditingController controller;
  final bool isPassword;

  const LoginField({
    super.key,
    required this.text,
    required this.controller,
    required this.isPassword,
  });

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {

  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      style: const TextStyle(fontSize: 16, color: const Color(0xFF262626)),
      cursorColor: const Color(0xFF262626),
      obscureText: widget.isPassword ? !_isVisible : false,
      decoration: InputDecoration(
        hintText: widget.text,
        filled: true,
        fillColor: const Color(0xFFF5F9FE),
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        hintStyle: const TextStyle(fontSize: 16, color: Color(0xFF7C8BA0)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: Color(0xFF3461FD)),
        ),
        suffixIcon: widget.isPassword ? IconButton(
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible;

              });
            },
            icon: Icon(
              _isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              color: const Color(0xFF7C8BA0),
              size: 22,
            )
        ) : null
      ),
    );
  }
}
