import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/views/auth/verified_account.dart';
import 'package:zero_waste/widgets/app_button.dart';

import '../../providers/user_data.dart';
import '../../res/res.dart';

class OtpScreen extends StatefulWidget {
  static const id = '/VerifyPhoneScreen';
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _pinCode = TextEditingController();

  Future<void> verifyPhone(String phoneNo) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (PhoneAuthCredential credential) async {
        try {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .whenComplete(
                  () => Navigator.pushNamed(context, VerifiedAccount.id));
        } on FirebaseAuthException catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.message!)),
          );
        }
      },
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationID, int? resendToken) async {
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: verificationID, smsCode: _pinCode.text);
        try {
          await FirebaseAuth.instance.signInWithCredential(credential);
        } on FirebaseAuthException catch (e) {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(content: Text(e.message!)),
          // );
          print(e.message!);
        }
      },
      codeAutoRetrievalTimeout: (String verificationID) {},
      timeout: const Duration(seconds: 60),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserAuth>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(children: [
              SvgPicture.asset(appImage, width: 90, height: 90),
              const SizedBox(height: 15),
              Text("Verify your phone number", style: headerText),
              const SizedBox(height: 8),
              Text(
                'Please, enter the code sent to ${provider.userForm.phone} via SMS to validate your account.',
                textAlign: TextAlign.center,
                style: GoogleFonts.jost(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Resources.color.tField),
              ),
              const SizedBox(height: 81),
              PinCodeTextField(
                controller: _pinCode,
                appContext: context,
                length: 6,
                autoFocus: true,
                autoDismissKeyboard: true,
                pinTheme: PinTheme(
                    activeColor: Resources.color.primaryColor,
                    selectedColor: Resources.color.primaryColor,
                    inactiveColor: Resources.color.tField,
                    shape: PinCodeFieldShape.box,
                    fieldHeight: 48,
                    fieldWidth: 48,
                    borderRadius: BorderRadius.circular(8)),
                onChanged: (val) {
                  setState(() => _pinCode.text = val);
                },
              ),
              const SizedBox(height: 82),
              AppButton(
                btnName: 'Verify',
                btn: () {
                  verifyPhone(provider.userForm.phone);
                },
              ),
              const SizedBox(height: 8),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Didn't receive code? ", style: haveAccTextStyle()),
                GestureDetector(
                  onTap: () {},
                  child: Text("Resend code", style: linkText),
                )
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
