import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:zero_waste/views/forget_password_screens/reset_password.dart';
import 'package:zero_waste/widgets/app_button.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            children: [
              SvgPicture.asset(appImage, width: 90, height: 90),
              const SizedBox(height: 15),
              Text('Forget Password', style: headerText),
              const SizedBox(height: 16),
              Text('We’ve sent a reset code to your number, kindly \ncheck ',
                  style: contentTextTwo, textAlign: TextAlign.center),
              const SizedBox(height: 96),
              PinCodeTextField(
                controller: _codeController,
                appContext: context,
                length: 6,
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
                  fieldHeight: 48,
                  fieldWidth: 48,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 81.95),
              AppButton(
                  btnName: 'Proceed',
                  btn: () => Navigator.pushReplacementNamed(
                      context, ResetPassword.id)),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
