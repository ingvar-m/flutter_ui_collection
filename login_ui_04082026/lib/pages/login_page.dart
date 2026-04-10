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
  late ScrollController _scrollController;
  late FocusNode _passwordFocusNode;
  final GlobalKey _buttonKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _scrollController = ScrollController();
    _passwordFocusNode = FocusNode();
    _passwordFocusNode.addListener(() {
      if (_passwordFocusNode.hasFocus) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _scrollToLoginButton();
        });
      }
    });
  }

  void _scrollToLoginButton() {
    final RenderBox? buttonRenderBox =
        _buttonKey.currentContext?.findRenderObject() as RenderBox?;
    if (buttonRenderBox != null) {
      final buttonPosition = buttonRenderBox.localToGlobal(Offset.zero);
      final buttonBottom = buttonPosition.dy + buttonRenderBox.size.height;
      final screenHeight = MediaQuery.of(context).size.height;
      final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

      if (buttonBottom > screenHeight - keyboardHeight) {
        _scrollController.animateTo(
          _scrollController.offset +
              (buttonBottom - (screenHeight - keyboardHeight)) +
              10,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _scrollController.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
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
                  onEditingComplete: () => _passwordFocusNode.requestFocus(),
                ),
                const SizedBox(height: 16),
                DataField(
                  text: 'Password',
                  controller: _passwordController,
                  isPassword: true,
                  focusNode: _passwordFocusNode,
                  onEditingComplete: () {
                    _scrollToLoginButton();
                  },
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
                PrimaryButton(key: _buttonKey, text: "Log In", onPressed: () {}),
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
        ),
      ),
    );
  }
}
