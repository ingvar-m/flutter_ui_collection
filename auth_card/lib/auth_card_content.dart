import 'package:auth_card/language_selector.dart';
import 'package:auth_card/primary_button.dart';
import 'package:auth_card/recover_password_button.dart';
import 'package:auth_card/social_auth_section.dart';
import 'package:flutter/material.dart';

import 'data_field.dart';
import 'register_footer.dart';

class AuthCardContent extends StatefulWidget {
  const AuthCardContent({super.key});

  @override
  State<AuthCardContent> createState() => _AuthCardContentState();
}

class _AuthCardContentState extends State<AuthCardContent> {

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
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerRight,
              child: LanguageSelector()
          ),
          const SizedBox(height: 70,),
          Text(
            "Sign In to recharge Direct",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40,),
          DataField(
            text: 'Enter Email',
            controller: _emailController,
            isPassword: false,
          ),
          const SizedBox(height: 20,),
          DataField(
            text: 'Enter Password',
            controller: _passwordController,
            isPassword: true,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: RecoverPasswordButton()
          ),
          const SizedBox(height: 40,),
          PrimaryButton(text: "Sign In", onPressed: () {}),
          const SizedBox(height: 40,),
          SocialAuthSection(),
          const SizedBox(height: 60,),
          const Center(child: RegisterFooter()),
        ],
      ),
    );
  }
}
