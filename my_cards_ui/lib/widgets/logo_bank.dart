import 'package:flutter/material.dart';

class LogoBank extends StatelessWidget {

  final double size;

  const LogoBank({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final double totalWidth = size * 1.6;
    return SizedBox(
      width: totalWidth,
      height: size,
      child: Stack(
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xffEB001B)
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffF79E1B).withAlpha(140)
              ),
            ),
          )
        ],
      ),
    );
  }
}
