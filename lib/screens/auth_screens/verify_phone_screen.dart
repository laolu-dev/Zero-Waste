import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:zero_waste/constants/constant.dart';

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
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                      style: contentTextTwo,
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ),
                ),
                const SizedBox(height: 81),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  onChanged: (value) {},
                  keyboardType: TextInputType.phone,
                  autoFocus: true,
                  textStyle: headerText.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 28,
                  ),
                  pinTheme: PinTheme(
                    activeColor: primaryColor,
                    selectedColor: primaryColor,
                    inactiveColor: const Color(0xffEBEAED),
                    shape: PinCodeFieldShape.box,
                    fieldHeight: 64,
                    fieldWidth: 64,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: 82),
                Container(
                  height: 52,
                  constraints: const BoxConstraints(maxWidth: 327),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, '/AccountValid'),
                    style: elevatedButtonStyleTwo,
                    child: const Text("Proceed"),
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  children: [
                    Text("Didn't receive code? ", style: haveAccTextStyle()),
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
