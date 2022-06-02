import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './password_verification.dart';
import '../../constants/constant.dart';
import '../../widgets/text_field_widget.dart';
import '../auth_screens/login_screen.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

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
            Text('Enter the phone number you use to register',
                style: textStyleTwo),
            const SizedBox(height: 32),
            const TextFields(
                label: 'Phone Number', showText: false, phoneField: true),
            const SizedBox(height: 24),
            Container(
              height: 52,
              constraints: const BoxConstraints(maxWidth: 400),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PasswordVerification(),
                    ),
                  );
                },
                style: elevatedButtonStyleTwo,
                child: const Text("Reset"),
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              children: [
                Text("Already have an account? ", style: textStyleTwo),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Text("Login", style: textStyleThree),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Row(
                children: [
                  Expanded(child: Divider(thickness: 1, color: lineColor)),
                  const SizedBox(width: 15),
                  Text("OR", style: textStyleFive),
                  const SizedBox(width: 15),
                  Expanded(child: Divider(thickness: 1, color: lineColor)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text("Login using Social Networks", style: textStyleTwo),
            const SizedBox(height: 16),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                circleContainer(
                  child: SvgPicture.asset(fbSvg),
                ),
                const SizedBox(width: 12),
                circleContainer(
                  child: SvgPicture.asset(googleSvg),
                ),
                const SizedBox(width: 12),
                circleContainer(
                  child: SvgPicture.asset(linklnSvg),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
