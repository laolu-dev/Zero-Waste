import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zero_waste/widgets/text_field_widget.dart';

import '../../constants/constant.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(appImage, width: 75, height: 75),
                const SizedBox(height: 15),
                Text("Reset your Password", style: headerText),
                const SizedBox(height: 16),
                SizedBox(
                  width: 327,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Kindly enter a new password to validate your account',
                      style: verifyTextStyle(),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 50),
                    TextFields(
                        label: 'Password', showText: true, phoneField: false),
                    SizedBox(height: 8),
                    Text('Your Password must be at least 8 characters'),
                    SizedBox(height: 16),
                    TextFields(
                        label: 'Confirm Password',
                        showText: true,
                        phoneField: false),
                    SizedBox(height: 50),
                  ],
                ),
                Container(
                  height: 52,
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, '/ValidateAcc2'),
                    style: elevatedButtonStyleTwo,
                    child: const Text("Reset Password"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
