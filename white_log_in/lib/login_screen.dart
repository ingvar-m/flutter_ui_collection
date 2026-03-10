import 'package:flutter/material.dart';
import 'package:white_log_in/login_button.dart';
import 'package:white_log_in/login_field.dart';
import 'package:white_log_in/social_login_button.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF2A4ECA)
                      ),
                    ),
                    const SizedBox(height: 16,),
                    Text(
                      "It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color(0xFF61677D),
                      ),
                    ),
                    const SizedBox(height: 24,),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: SocialLoginButton(
                                  text: "Facebook",
                                  iconPath: "assets/icons/facebook.png",
                                  onPressed: () {}
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Expanded(
                              child: SocialLoginButton(
                                  text: "Google",
                                  iconPath: "assets/icons/google.png",
                                  onPressed: () {}
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 16,),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                color: Color(0xFFE0E5EC),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8),
                              child: Text(
                                'Or',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF262626)
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                color: Color(0xFFE0E5EC),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 16,),
                    LoginField(
                        text: 'Email',
                        controller: _emailController,
                        isPassword: false
                    ),
                    const SizedBox(height: 16,),
                    LoginField(
                        text: 'Password',
                        controller: _passwordController,
                        isPassword: true
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                                fontSize: 12,
                                color: const Color(0xFF7C8BA0)
                            ),
                          )
                      ),
                    ),
                    const SizedBox(height: 32,),
                    LoginButton(onPressed: () {}),
                    const SizedBox(height: 16,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Text(
                            "Don’t have account?",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFF3B4054)
                            ),
                          ),
                          const SizedBox(width: 4,),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                                "Sign Up",
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF3461FD)
                                ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
