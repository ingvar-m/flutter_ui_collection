import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_screen_032926/constants/app_colors.dart';
import 'package:login_screen_032926/widgets/data_field.dart';
import 'package:login_screen_032926/widgets/login_shape_clipper.dart';
import 'package:login_screen_032926/widgets/primary_button.dart';
import 'package:login_screen_032926/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          ClipPath(
            clipper: LoginShapeClipper(),
            child: Container(color: Colors.white),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 0.08,),
                    const Text(
                      'LOGO',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.2,),
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.06,),
                    DataField(
                      text: 'Email',
                      controller: _emailController,
                      isPassword: false,
                    ),
                    SizedBox(height: 16,),
                    DataField(
                      text: 'Password',
                      controller: _passwordController,
                      isPassword: true,
                    ),
                    SizedBox(height: 24,),
                    PrimaryButton(text: "Log In", onPressed: () {}),
                    SizedBox(height: screenHeight * 0.05,),
                    Text(
                      "Or continue with",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SocialButton(
                            text: 'Google',
                            pathIcon: 'assets/icons/google_icon.png',
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: SocialButton(
                            text: 'Facebook',
                            pathIcon: 'assets/icons/facebook_icon.png',
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.05,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have account?",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.secondaryTextColor,
                          ),
                        ),
                        const SizedBox(width: 4,),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero
                            ),
                            child: Text(
                              "Create now",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
