import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/views/auth/signup_screen.dart';
import 'package:zero_waste/views/forget_password_screens/forgot_password.dart';
import 'package:zero_waste/widgets/app_button.dart';
import 'package:zero_waste/widgets/auth_widgets/password_input.dart';
import 'package:zero_waste/widgets/auth_widgets/social_login.dart';
import 'package:zero_waste/widgets/auth_widgets/user_input.dart';
import '../tabs.dart';

final TextEditingController email = TextEditingController();

class LoginScreen extends StatefulWidget {
  static const id = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _password = TextEditingController();

  Future<void> signInUser(String mail, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: mail, password: password)
          .then(
              (value) => Navigator.pushReplacementNamed(context, AppPages.id));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message!)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(appImage, width: 90, height: 90),
                  const SizedBox(height: 15),
                  Text("Login to your Account", style: headerText),
                  const SizedBox(height: 38),
                  UserInput(
                    label: 'Email',
                    controller: email,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Email cannot not be empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  PasswordInput(
                    label: 'Password',
                    controller: _password,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Password cannot not be empty';
                      }
                      if (value.length < 8) {
                        return 'Your password must be at least 8 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  //Forgot Password
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, ForgotPassword.id),
                      child:
                          Text("Forgot password?", style: forgotPasswordText),
                    ),
                  ),
                  const SizedBox(height: 24),
                  AppButton(
                    btnName: 'Login',
                    btn: () {
                      if (_formKey.currentState!.validate()) {
                        signInUser(email.text, _password.text);
                        email.clear();
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account? ", style: contentText),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, SignUpScreen.id),
                        child: Text("Sign up", style: linkText),
                      )
                    ],
                  ),
                  const SizedBox(height: 13),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Row(
                      children: [
                        const Expanded(
                            child: Divider(thickness: 1, color: dividerColor)),
                        const SizedBox(width: 15),
                        Text("OR", style: orTextStyle),
                        const SizedBox(width: 15),
                        const Expanded(
                            child: Divider(thickness: 1, color: dividerColor)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text("Login using Social Networks", style: contentText),
                  const SizedBox(height: 16),
                  //Social Login
                  const SocialLogin()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
