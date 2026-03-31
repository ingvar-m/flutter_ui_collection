import 'package:flutter/material.dart';
import 'package:login_screen_032926/constants/app_colors.dart';

class DataField extends StatelessWidget {

  final String text;
  final TextEditingController controller;
  final bool isPassword;

  const DataField({super.key, required this.text, required this.controller, required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        color: AppColors.black,
        fontSize: 14
      ),
      cursorColor: AppColors.black,
      cursorWidth: 1,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          fontSize: 14,
          color: AppColors.secondaryTextColor
        ),
        labelText: text,
        suffixIcon: isPassword ? TextButton(
            onPressed: () {},
            child: Text(
              'Forgot?',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),
            )
        ) : null,
        labelStyle: TextStyle(
            fontSize: 14,
            color: AppColors.secondaryTextColor
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: AppColors.textFieldColor
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              width: 1,
              color: AppColors.activeTextFieldColor
          ),
        ),
      ),
    );
  }
}
