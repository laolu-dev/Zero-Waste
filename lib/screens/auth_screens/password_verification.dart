import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/widgets/text_field_widget.dart';

class PasswordVerification extends StatelessWidget {
  const PasswordVerification({Key? key}) : super(key: key);

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
                Text("Forgot Password", style: headerText),
                const SizedBox(height: 16),
                SizedBox(
                  width: 327,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'We’ve sent a reset code to your number, kindly check ',
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
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, '/PasswordVerify'),
                    style: elevatedButtonStyleTwo,
                    child: const Text("Proceed"),
                  ),
                ),
                const SizedBox(height: 16),
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
    );
  }
}
