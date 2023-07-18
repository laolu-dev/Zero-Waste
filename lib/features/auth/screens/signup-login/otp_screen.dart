import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../models/user.dart';
import '../../../../shared/res.dart';

import '../../../../constants/constant.dart';
import '../../../../widgets/app_button.dart';
import 'verified_account.dart';

class OtpScreen extends StatefulWidget {
  static const id = '/verify_phone';
  final Farmer? user;
  const OtpScreen({Key? key, required this.user}) : super(key: key);

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
        } on FirebaseAuthException {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(content: Text(e.message!)),
          // );
          
        }
      },
      codeAutoRetrievalTimeout: (String verificationID) {},
      timeout: const Duration(seconds: 60),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(children: [
              Image.asset(Resources.iString.appIcon, width: 90, height: 90),
              const SizedBox(height: 15),
              Text(
                "Verify your phone number",
                style: GoogleFonts.jost(
                    color: headColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),
              Text(
                'Please, enter the code sent to ${widget.user?.phone} via SMS to validate your account.',
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
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  activeColor: Resources.color.primary,
                  selectedColor: Resources.color.primary,
                  inactiveColor: Resources.color.tField,
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 48,
                  fieldWidth: 48,
                  borderRadius: BorderRadius.circular(8),
                ),
                onChanged: (val) {},
              ),
              const SizedBox(height: 82),
              AppButton(
                btnName: 'Verify',
                btn: () {
                  // verifyPhone(provider.userForm.phone);
                  Navigator.pushNamed(context, VerifiedAccount.id);
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
