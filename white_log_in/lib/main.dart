import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_log_in/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      home: LoginScreen(),
    );
  }
}

