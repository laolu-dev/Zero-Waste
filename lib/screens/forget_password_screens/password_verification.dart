import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import './reset_password.dart';
import '../../constants/constant.dart';

class PasswordVerification extends StatelessWidget {
  const PasswordVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(appImage),
            const SizedBox(height: 15),
            Text('Forget Password', style: textStyleOne),
            const SizedBox(height: 16),
            Text(
              'We’ve sent a reset code to your number, kindly \ncheck ',
              style: textStyleTwo,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 96),
            PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (value) {},
              keyboardType: TextInputType.phone,
              autoFocus: true,
              textStyle: textStyleOne.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: 28,
              ),
              pinTheme: PinTheme(
                activeColor: colorGreen,
                selectedColor: colorGreen,
                inactiveColor: const Color(0xffEBEAED),
                shape: PinCodeFieldShape.box,
                fieldHeight: 64,
                fieldWidth: 64,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 81.95),
            Container(
              height: 52,
              constraints: const BoxConstraints(maxWidth: 400),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPassword(),
                    ),
                  );
                },
                style: elevatedButtonStyleTwo,
                child: const Text("Proceed"),
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              children: [
                Text("Didn’t Receive Code ? ", style: textStyleTwo),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Resend Code",
                    style: textStyleThree.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
