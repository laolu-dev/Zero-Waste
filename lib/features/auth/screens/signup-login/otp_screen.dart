import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/enums/auth_enum.dart';
import 'package:zero_waste/provider/authenticate.dart';
import '../../../../config/res.dart';
import '../../../../widgets/app_button.dart';
import 'verified_account.dart';

class OtpScreen extends StatefulWidget {
  static const id = '/verify_phone';
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late TextEditingController _pinCode;

  @override
  void initState() {
    super.initState();
    _pinCode = TextEditingController();
  }

  @override
  void dispose() {
    // context.read<UserAuth>().reset();
    _pinCode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final email = Provider.of<UserAuth>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              children: [
                Image.asset(Resources.iString.appIcon, width: 90, height: 90),
                const SizedBox(height: 15),
                Text(
                  "Verify your email",
                  style: GoogleFonts.jost(
                      color: Resources.color.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                Text(
                  'Please, enter the code sent to ${email.user?.email} to validate your account.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.jost(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Resources.color.hintText),
                ),
                const SizedBox(height: 81),
                PinCodeTextField(
                  controller: _pinCode,
                  appContext: context,
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.center,
                  keyboardType: TextInputType.number,
                  textStyle: GoogleFonts.jost(
                      color: Resources.color.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w900),
                  pinTheme: PinTheme(
                    activeColor: Resources.color.primary,
                    selectedColor: Resources.color.primary,
                    inactiveColor: Resources.color.hintText,
                    shape: PinCodeFieldShape.box,
                    fieldHeight: 48,
                    fieldWidth: 48,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: 82),
                Consumer<UserAuth>(
                  builder: (context, auth, child) {
                    return auth.state == AuthState.loading
                        ? const CircularProgressIndicator()
                        : AppButton(
                            btnName: 'Verify',
                            btn: () async {
                              await auth.verifyEmail(_pinCode.text);
                              verified(auth);
                            },
                          );
                  },
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive code? ",
                      style:
                          TextStyle(fontSize: 16, color: Resources.color.black),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<UserAuth>().signUp();
                      },
                      child: Text(
                        "Resend code",
                        style: TextStyle(
                            fontSize: 16,
                            color: Resources.color.primary,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w700),
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

  void verified(UserAuth auth) {
    if (auth.state == AuthState.hasError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(milliseconds: 700),
          content: Text(auth.error!),
        ),
      );
    } else {
      Navigator.pushNamed(context, VerifiedAccount.id);
    }
  }
}
