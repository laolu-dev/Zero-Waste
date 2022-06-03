import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/widgets/text_field_widget.dart';

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
                  Text("Verify your phone number", style: headerText),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: 327,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Please, enter the code sent to +2349099343499 via SMS to validate your account.',
                        style: verifyTextStyle(),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 81),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 64,
                        child: passwordReset(),
                      ),
                      SizedBox(
                        width: 64,
                        child: passwordReset(),
                      ),
                      SizedBox(
                        width: 64,
                        child: passwordReset(),
                      ),
                      SizedBox(
                        width: 64,
                        child: passwordReset(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 82),
                  Container(
                    height: 52,
                    constraints: const BoxConstraints(maxWidth: 327),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushReplacementNamed(
                          context, '/ValidateAcc'),
                      style: elevatedButtonStyleTwo,
                      child: const Text("Proceed"),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    children: [
                      Text("Don't receive code? ", style: haveAccTextStyle()),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Resend code",
                          style: linkText,
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
