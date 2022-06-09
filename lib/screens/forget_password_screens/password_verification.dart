import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:zero_waste/screens/forget_password_screens/reset_password.dart';
import '../../constants/constant.dart';

class PasswordVerification extends StatefulWidget {
  static const id = 'PasswordVerification';

  const PasswordVerification({Key? key}) : super(key: key);

  @override
  State<PasswordVerification> createState() => _PasswordVerificationState();
}

class _PasswordVerificationState extends State<PasswordVerification> {
  final TextEditingController _codeController = TextEditingController();

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(appImage, width: 75, height: 75),
              const SizedBox(height: 15),
              Text('Forget Password', style: headerText),
              const SizedBox(height: 16),
              Text(
                'We’ve sent a reset code to your number, kindly \ncheck ',
                style: contentTextTwo,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 96),
              PinCodeTextField(
                controller: _codeController,
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
              const SizedBox(height: 81.95),
              Container(
                height: 52,
                constraints: const BoxConstraints(maxWidth: 400),
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, ResetPassword.id),
                  style: elevatedButtonStyleTwo,
                  child: const Text("Proceed"),
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                children: [
                  Text("Didn't Receive Code ? ", style: haveAccTextStyle()),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Resend Code",
                      style: linkText.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
