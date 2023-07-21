import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/enums/auth_enum.dart';
import 'package:zero_waste/provider/authenticate.dart';
import '../../../../config/res.dart';
import '../../../../config/constant.dart';
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
    _pinCode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final phone = Provider.of<UserAuth>(context);
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
                  "Verify your phone number",
                  style: GoogleFonts.jost(
                      color: headColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                Text(
                  'Please, enter the code sent to ${phone.user?.phone} via SMS to validate your account.',
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
                Consumer<UserAuth>(
                  builder: ((context, value, child) {
                    return value.state == AuthState.loading &&
                            value.state != null
                        ? const CircularProgressIndicator()
                        : AppButton(
                            btnName: 'Verify',
                            btn: () {
                              value.verifyPhone(_pinCode.text).whenComplete(() {
                                Navigator.pushNamed(
                                    context, VerifiedAccount.id);
                              });
                            },
                          );
                  }),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't receive code? ", style: haveAccTextStyle()),
                    GestureDetector(
                      onTap: () {},
                      child: Text("Resend code", style: linkText),
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
