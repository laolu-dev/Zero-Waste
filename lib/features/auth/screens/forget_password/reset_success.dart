import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/res.dart';

import '../../../../widgets/app_button.dart';
import '../signup-login/login_screen.dart';

class ResetSuccess extends StatelessWidget {
  static const id = 'ResetSuccess';
  const ResetSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 123.5),
          child: Column(
            children: [
              Image.asset(Resources.iString.success),
               const SizedBox(height: 30),
              Text(
                'Password Changed Successfully',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.jost(fontSize: 28, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 57.5),
              AppButton(
                btnName: 'Login',
                btn: () =>
                    Navigator.pushReplacementNamed(context, LoginScreen.id),
              )
            ],
          ),
        ),
      ),
    );
  }
}
