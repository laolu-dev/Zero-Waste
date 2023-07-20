import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/res.dart';
import 'password_verification.dart';
import '../../../../widgets/app_button.dart';
import '../../widgets/social_login.dart';
import '../../widgets/user_info_textfield.dart';
import '../../../../config/constant.dart';
import '../signup-login/login_screen.dart';

class ForgotPassword extends StatefulWidget {
  static const id = 'ForgotPassword';
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _phoneReset = TextEditingController();
  // final fire = UserAuthentication();
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
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            children: [
              Image.asset(Resources.iString.appIcon, width: 90, height: 90),
              const SizedBox(height: 15),
              Text(
                "Forgot Password",
                style: GoogleFonts.jost(
                    color: headColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),
              Text('Enter the phone number you used to register',
                  style: contentTextTwo),
              const SizedBox(height: 32),
              UserInput(label: 'Phone Number', controller: _phoneReset),
              const SizedBox(height: 24),
              AppButton(
                  btnName: 'Reset',
                  btn: () async {
                  Navigator.pushReplacementNamed(
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
    );
  }
}
