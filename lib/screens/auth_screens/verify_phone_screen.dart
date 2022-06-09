import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/screens/auth_screens/validated_account_screen.dart';
import '../../providers/user_data.dart';

class VerifyPhoneScreen extends StatefulWidget {
  static const id = 'VerifyPhoneScreen';
  const VerifyPhoneScreen({Key? key}) : super(key: key);

  @override
  State<VerifyPhoneScreen> createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  // String? _verificationCode;
  final TextEditingController _pinCode = TextEditingController();

  // @override
  // void initState() {
  //   _verifyPhone();
  //   super.initState();
  // }

  // _verifyPhone() async {
  //   final userPhone = Provider.of<UserAuth>(context);
  //   await FirebaseAuth.instance.verifyPhoneNumber(
  //     phoneNumber: '+ 234 ${userPhone.phoneNo}',
  //     verificationCompleted: (PhoneAuthCredential credential) async {
  //       await FirebaseAuth.instance
  //           .signInWithCredential(credential)
  //           .then((value) async {
  //         if (value.user != null) {
  //           Navigator.pushReplacementNamed(context, AccountValidScreen.id);
  //         }
  //       });
  //     },
  //     verificationFailed: (FirebaseAuthException e) {
  //       print(e.message);
  //     },
  //     codeSent: (String verificationID, int? resendToken) {
  //       setState(() {
  //         _verificationCode = verificationID;
  //       });
  //     },
  //     codeAutoRetrievalTimeout: (String verificationID) {
  //       setState(() {
  //         _verificationCode = verificationID;
  //       });
  //     },
  //     timeout: const Duration(seconds: 60),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final userPhone = Provider.of<UserAuth>(context);
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
                      'Please, enter the code sent to \n+ 234 ${userPhone.phoneNo.substring(1)} via SMS to validate your \naccount.',
                      style: contentTextTwo,
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ),
                ),
                const SizedBox(height: 81),
                PinCodeTextField(
                  controller: _pinCode,
                  appContext: context,
                  length: 4,
                  onChanged: (String value) {},
                  // onChanged: (pin) async {
                  //   try {
                  //     await FirebaseAuth.instance
                  //         .signInWithCredential(PhoneAuthProvider.credential(
                  //             verificationId: _verificationCode!, smsCode: pin))
                  //         .then(
                  //       (value) {
                  //         if (value.user != null) {
                  //           Navigator.pushReplacementNamed(
                  //               context, AccountValidScreen.id);
                  //         }
                  //       },
                  //     );
                  //   } catch (e) {
                  //     FocusScope.of(context).unfocus();
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //         const SnackBar(content: Text('Invalid Code')));
                  //   }

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
                    onPressed: () =>
                        Navigator.pushNamed(context, AccountValidScreen.id),
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
