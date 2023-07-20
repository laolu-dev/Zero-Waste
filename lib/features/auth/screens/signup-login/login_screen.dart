import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:zero_waste/features/auth/widgets/password_textfield.dart';
import '../../../../constants/constant.dart';
import '../../../../shared/res.dart';
import '../../../home/screens/tabs.dart';
import '../../widgets/user_info_textfield.dart';
import 'signup_screen.dart';
import '../forget_password/forgot_password.dart';
import '../../../../widgets/app_button.dart';

import '../../widgets/social_login.dart';

import '../../../../models/user.dart';


class LoginScreen extends StatefulWidget {
  static const id = '/login_screen';
  final Farmer? user;
  const LoginScreen({Key? key, this.user}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController email;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    email = TextEditingController();
    password = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

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
                children: [
                  Image.asset(Resources.iString.appIcon, width: 90, height: 90),

                  const SizedBox(height: 15),
                  Text(
                    "Login to your Account",
                    style: GoogleFonts.jost(
                        color: headColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 38),
                  UserInput(
                    label: 'Email',
                    controller: email,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Email cannot not be empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  PasswordInput(
                    label: 'Password',
                    controller: password,
                    validator: (String? value) {
                      if (value!.isEmpty) {
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
                      child: Text(
                        "Forgot password?",
                        style: GoogleFonts.jost(
                          color: primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  AppButton(
                    btnName: 'Login',
                    btn: () {
                      // if (_formKey.currentState!.validate()) {

                      //   // signInUser(email.text, _password.text);
                      //   email.clear();
                      // }

                      Navigator.pushNamed(context, AppPages.id,
                          );
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account? ",
                        style: GoogleFonts.jost(
                          color: const Color.fromRGBO(34, 34, 34, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
                        Expanded(
                          child: Divider(
                              thickness: 1,
                              color: Resources.color.dividerColor),
                        ),
                        const SizedBox(width: 15),
                        Text("OR", style: orTextStyle),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Divider(
                              thickness: 1,
                              color: Resources.color.dividerColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Login using Social Networks",
                    style: GoogleFonts.jost(
                      color: const Color.fromRGBO(34, 34, 34, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
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
