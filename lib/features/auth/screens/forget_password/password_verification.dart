import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/enums/auth_enum.dart';
import 'package:zero_waste/provider/authenticate.dart';
import 'package:zero_waste/utils/logger.dart';
import '../../../../utils/config/res.dart';
import '../../../../widgets/app_button.dart';
import 'reset_password.dart';

class PasswordVerification extends StatefulWidget {
  final String? email;
  static const id = 'PasswordVerification';
  const PasswordVerification({Key? key, this.email}) : super(key: key);

  @override
  State<PasswordVerification> createState() => _PasswordVerificationState();
}

class _PasswordVerificationState extends State<PasswordVerification> {
  late TextEditingController _pinCode;
  late FocusNode _pinFocusNode;

  @override
  void initState() {
    super.initState();
    _pinCode = TextEditingController();
    _pinFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _pinCode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              children: [
                Image.asset(Resources.iString.appIcon, width: 90, height: 90),
                const SizedBox(height: 15),
                Text(
                  'Forgot Password',
                  style: GoogleFonts.jost(
                      color: Resources.color.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 16),
                Text(
                  'We’ve sent a reset code to ${widget.email}, kindly \ncheck ',
                  style: TextStyle(fontSize: 16, color: Resources.color.logIn),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 96),
                PinCodeTextField(
                  controller: _pinCode,
                  appContext: context,
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.center,
                  keyboardType: TextInputType.phone,
                  autoFocus: true,
                  focusNode: _pinFocusNode,
                  textStyle: GoogleFonts.jost(
                      color: Resources.color.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w900),
                  pinTheme: PinTheme(
                    activeColor: Resources.color.primary,
                    selectedColor: Resources.color.primary,
                    inactiveColor: const Color(0xffEBEAED),
                    shape: PinCodeFieldShape.box,
                    fieldHeight: 48,
                    fieldWidth: 48,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: 81.95),
                Consumer<UserAuth>(
                  builder: (context, verifyOtp, child) {
                    return verifyOtp.state == AuthState.loading
                        ? const CircularProgressIndicator()
                        : AppButton(
                            btnName: 'Reset',
                            btn: () async {
                              if (_pinCode.text.isEmpty) {
                                logger.w("Field is empty");
                              } else {
                                 _pinFocusNode.unfocus();
                                await verifyOtp.verifyResetPasswordOtp(
                                    widget.email!, _pinCode.text);
                                checkErrorState(verifyOtp);
                              }
                            },
                          );
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't Receive Code ? ",
                      style:
                          TextStyle(fontSize: 16, color: Resources.color.black),
                    ),
                    GestureDetector(
                      onTap: () {
                        context
                            .read<UserAuth>()
                            .requestToUpdatePassword(widget.email!);
                      },
                      child: Text(
                        "Resend Code",
                        style: TextStyle(
                            fontSize: 16,
                            color: Resources.color.primary,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }

  void checkErrorState(UserAuth verifyOtp) {
    if (verifyOtp.state == AuthState.completed) {
      // context.read<UserAuth>().reset();
      Navigator.pushNamed(context, ResetPassword.id, arguments: widget.email!);
    }
    if (verifyOtp.state == AuthState.hasError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(milliseconds: 1000),
          content: Text(verifyOtp.error!),
        ),
      );
    }
  }
}
