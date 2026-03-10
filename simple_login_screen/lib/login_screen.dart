import 'package:flutter/material.dart';
import 'package:simple_login_screen/login_button.dart';
import 'package:simple_login_screen/login_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lock_person_outlined, color: Colors.white, size: 200),
                  SizedBox(height: 48,),
                  Text(
                    "Welcome Back!",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 26,),
                  Text(
                    "Please Log into your existing account",
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 24,),
                  LoginField(
                    controller: _emailController,
                    hintText: 'Email',
                    isPassword: false,
                  ),
                  SizedBox(height: 16,),
                  LoginField(
                    controller: _passwordController,
                    hintText: 'Password',
                    isPassword: true,
                  ),
                  SizedBox(height: 24,),
                  LoginButton(
                      text: "Log in",
                      onPressed: () {},
                      backgroundColor: const Color(0xFF2BC990)
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
