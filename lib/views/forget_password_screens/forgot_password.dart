import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zero_waste/service/firebase_auth.dart';
import 'package:zero_waste/views/forget_password_screens/password_verification.dart';
import 'package:zero_waste/widgets/app_button.dart';
import 'package:zero_waste/widgets/auth_widgets/social_login.dart';
import 'package:zero_waste/widgets/auth_widgets/user_input.dart';
import '../../constants/constant.dart';
import '../auth/login_screen.dart';

class ForgotPassword extends StatefulWidget {
  static const id = 'ForgotPassword';
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _phoneReset = TextEditingController();
  final fire = UserAuthentication();
  // final phone =
  //     fire.database.doc(FirebaseAuth.instance.currentUser!.phoneNumber);

  @override
  void dispose() {
    _phoneReset.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              children: [
                SvgPicture.asset(appImage, width: 90, height: 90),
                const SizedBox(height: 15),
                Text("Forgot Password", style: headerText),
                const SizedBox(height: 16),
                Text('Enter the phone number you used to register',
                    style: contentTextTwo),
                const SizedBox(height: 32),
                UserInput(label: 'Phone Number', controller: _phoneReset),
                const SizedBox(height: 24),
                AppButton(
                    btnName: 'Reset',
                    btn: () async {
                      return Navigator.pushReplacementNamed(
                          context, PasswordVerification.id);
                    }),
                const SizedBox(height: 16),
                Wrap(
                  children: [
                    Text("Already have an account? ", style: contentText),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, LoginScreen.id),
                      child: Text("Login", style: linkText),
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
                const SocialLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
