import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui_04082026/constants/app_colors.dart';
import 'package:login_ui_04082026/widgets/data_field.dart';
import 'package:login_ui_04082026/widgets/logo.dart';
import 'package:login_ui_04082026/widgets/primary_button.dart';
import 'package:login_ui_04082026/widgets/social_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Logo(),
                    const SizedBox(height: 32),
                    Text(
                      "Sign in to your Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Enter your email and password to log in ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                    const SizedBox(height: 32),
                    DataField(
                      text: 'Email',
                      controller: _emailController,
                      isPassword: false,
                    ),
                    const SizedBox(height: 16),
                    DataField(
                      text: 'Password',
                      controller: _passwordController,
                      isPassword: true,
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            color: AppColors.textButtonColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    PrimaryButton(text: "Log In", onPressed: () {}),
                    const SizedBox(height: 24),
                    SocialAuth(),
                    const SizedBox(height: 54),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account?",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: AppColors.secondaryTextColor,
                          ),
                        ),
                        const SizedBox(width: 6),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: AppColors.textButtonColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
