import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/screens/validated_account_screen.dart';
import 'package:zero_waste/screens/login_screen.dart';
// import 'package:zero_waste/screens/signin_screen.dart';

class VerifyPhoneScreen extends StatefulWidget {
  const VerifyPhoneScreen({Key? key}) : super(key: key);

  @override
  State<VerifyPhoneScreen> createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(appImage, width: 75, height: 75),
                  const SizedBox(height: 15),
                  Text(
                    "Verify your phone number",
                    style: textStyleTwo,
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: 327,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Please, enter the code sent to +2349099343499 via SMS to validate your account.',
                        style: verTxtStyle(),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 81),
                  SizedBox(
                    width: 327,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        codeTextBox(
                            child: TextField(
                          keyboardType: TextInputType.number,
                        )),
                        codeTextBox(child: TextField(maxLength: 1)),
                        codeTextBox(child: TextField(maxLength: 1)),
                        codeTextBox(child: TextField(maxLength: 1)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 82),
                  Container(
                    height: 52,
                    constraints: const BoxConstraints(maxWidth: 327),
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const AccountValidScreen(),
                        ),
                      ),
                      style: elevatedButtonStyleTwo,
                      child: const Text("Proceed"),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    children: [
                      Text("Don't receive code? ", style: havAcc()),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        ),
                        child: Text(
                          "Resend code",
                          style: TextStyle(fontSize: 16, color: colorGreen),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
