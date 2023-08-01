import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/config/res.dart';

import '../../../../widgets/app_button.dart';
import 'login_screen.dart';

class VerifiedAccount extends StatelessWidget {
  static const id = '/verified_account';
  const VerifiedAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Resources.iString.success),
                const SizedBox(height: 30),
                Text(
                  'Account Validated Successfully',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.jost(
                      fontSize: 28, fontWeight: FontWeight.w700),
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
      ),
    );
  }
}
