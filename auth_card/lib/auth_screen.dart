import 'dart:ui';

import 'package:auth_card/auth_card_content.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF6F6F6),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 257,
            left: -143,
            child: Container(
              width: 226,
              height: 226,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFDDA82A).withAlpha(150),
              ),
            ),
          ),
          Positioned(
            bottom: -11,
            left: 26,
            child: Container(
              width: 226,
              height: 226,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF4461F2).withAlpha(150),
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
              child: Container(color: Colors.transparent),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
              child: AuthCardContent(),
            ),
          ),
        ],
      ),
    );
  }
}
