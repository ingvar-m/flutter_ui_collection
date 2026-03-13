import 'package:flutter/material.dart';

class DataField extends StatefulWidget {

  final String text;
  final TextEditingController controller;
  final bool isPassword;

  const DataField({ super.key, required this.text, required this.controller, required this.isPassword});

  @override
  State<DataField> createState() => _DataFieldState();
}

class _DataFieldState extends State<DataField> {

  late bool isObscured;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isObscured = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: isObscured,
      style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xFF4F555A)
      ),
      decoration: InputDecoration(
        hintText: widget.text,
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xFF4F555A)
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10)
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        suffixIcon: widget.isPassword ? IconButton(
            onPressed: () {
              setState(() {
                isObscured = !isObscured;
              });
            },
            icon: Icon(
              isObscured ? Icons.visibility_off_outlined : Icons.visibility_outlined,
              size: 24,
              color: const Color(0xFF667085),
            )
        ) : IconButton(
            onPressed: () {
              widget.controller.clear();
            },
            icon: const Icon(
                Icons.cancel_outlined,
              size: 24,
              color: const Color(0xFF667085),
            )
        )
      ),
    );
  }
}
