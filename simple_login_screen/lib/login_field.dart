import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;
  final bool isPassword;

  const LoginField({required this.controller, required this.hintText, required this.isPassword, super.key});

  @override
  Widget build(BuildContext context) {

    final fixedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        width: 1.0,
        color: Colors.white
      )
    );

    return TextField(
      controller: controller,
      style: const TextStyle(
        color: Colors.white,
          fontSize: 16
      ),
      cursorColor: Colors.white,
      obscureText: isPassword,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        hintStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16
        ),
        border: fixedBorder,
        enabledBorder: fixedBorder,
        focusedBorder: fixedBorder,
        errorBorder: fixedBorder,
        focusedErrorBorder: fixedBorder,
        disabledBorder: fixedBorder
      ),
    );
  }
}
