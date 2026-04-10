import 'package:flutter/material.dart';
import 'package:login_ui_04082026/constants/app_colors.dart';

class DataField extends StatefulWidget {

  final String text;
  final TextEditingController controller;
  final bool isPassword;
  final FocusNode? focusNode;
  final VoidCallback? onEditingComplete;

  const DataField({super.key, required this.text, required this.controller, required this.isPassword, this.focusNode, this.onEditingComplete});

  @override
  State<DataField> createState() => _DataFieldState();
}

class _DataFieldState extends State<DataField> {

  late bool _isVisible;

  @override
  void initState() {
    super.initState();
    _isVisible = !widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.secondaryTextColor
          ),
        ),
        const SizedBox(height: 3,),
        TextField(
          controller: widget.controller,
          obscureText: widget.isPassword ? _isVisible : false,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            suffixIcon: widget.isPassword ? IconButton(
                onPressed: () {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
                },
                icon: Icon(
                  _isVisible ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  color: AppColors.iconColor,
                )
            ) : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: AppColors.primaryStrokeColor,
                width: 1
              )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: AppColors.secondaryTextColor,
                    width: 1
                )
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 14,vertical: 12)
          ),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.primaryTextColor
          ),
          cursorColor: AppColors.primaryTextColor,
          focusNode: widget.focusNode,
          onEditingComplete: widget.onEditingComplete,
        ),
      ],
    );
  }
}
