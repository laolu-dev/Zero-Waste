import 'package:flutter/material.dart';
import 'package:zero_waste/res/res.dart';
import 'package:zero_waste/widgets/app_button.dart';

import 'login_screen.dart';

class VerifiedAccount extends StatelessWidget {
  static const id = 'AccountValidScreen';
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
                Image.asset(Resources.iString.acctValid),
                const SizedBox(height: 57.5),
                AppButton(
                  btnName: 'Login',
                  btn: () {
                    Navigator.pushReplacementNamed(context, LoginScreen.id);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
