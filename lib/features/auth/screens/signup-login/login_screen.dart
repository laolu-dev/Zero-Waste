import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../../config/res.dart';
import '../../../../enums/auth_enum.dart';
import '../../../../provider/authenticate.dart';
import '../../widgets/password_textfield.dart';
import '../../../../config/constant.dart';
import '../../../home/screens/tabs.dart';
import '../../widgets/user_info_textfield.dart';
import 'signup_screen.dart';
import '../forget_password/forgot_password.dart';
import '../../../../widgets/app_button.dart';
import '../../widgets/social_login.dart';

class LoginScreen extends StatefulWidget {
  static const id = '/login_screen';
  const LoginScreen({Key? key}) : super(key: key);

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
                    // validator: (String? value) {
                    //   if (value!.isEmpty) {
                    //     return 'Email cannot not be empty';
                    //   }
                    //   return null;
                    // },
                  ),
                  const SizedBox(height: 16),
                  PasswordInput(
                    label: 'Password',
                    controller: password,
                    // validator: (String? value) {
                    //   if (value!.isEmpty) {
                    //     return 'Password cannot not be empty';
                    //   }
                    //   if (value.length < 8) {
                    //     return 'Your password must be at least 8 characters';
                    //   }
                    //   return null;
                    // },
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
                  Consumer<UserAuth>(
                    builder: ((context, value, child) {
                      return value.state == AuthState.loading &&
                              value.state != null
                          ? const CircularProgressIndicator()
                          : AppButton(
                              btn: () async {
                                if (_formKey.currentState!.validate()) {
                                  await value.login(email.text).whenComplete(
                                      () => Navigator.pushNamed(
                                          context, AppPages.id));
                                }
                              },
                              btnName: 'Login',
                            );
                    }),
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
