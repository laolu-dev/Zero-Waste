import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zero_waste/screens/auth_screens/login_screen.dart';
import 'package:zero_waste/screens/forget_password_screens/password_verification.dart';
import 'package:zero_waste/widgets/text_field_widget.dart';
import '../../constants/constant.dart';

class ForgotPassword extends StatefulWidget {
  static const id = 'ForgotPassword';
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _phone = TextEditingController();

  @override
  void dispose() {
    _phone.dispose();
    super.dispose();
  }

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
                Text(
                  'Enter the phone number you use to register',
                  style: contentTextTwo,
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                const SizedBox(height: 32),
                TextFields(
                    controller: _phone,
                    obscureText: false,
                    label: 'Phone Number',
                    showIcon: false,
                    phoneField: true),
                const SizedBox(height: 24),
                Container(
                  height: 52,
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, PasswordVerification.id),
                    style: elevatedButtonStyleTwo,
                    child: const Text("Reset"),
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  children: [
                    Text("Already have an account? ", style: contentText),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, LoginScreen.id),
                      child: Text("Login", style: linkText),
                    )
                  ],
                ),
                const SizedBox(height: 13),
                Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Row(
                    children: [
                      const Expanded(
                          child: Divider(thickness: 1, color: dividerColor)),
                      const SizedBox(width: 15),
                      Text("OR", style: orTextStyle),
                      const SizedBox(width: 15),
                      const Expanded(
                          child: Divider(thickness: 1, color: dividerColor)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text("Login using Social Networks", style: contentText),
                const SizedBox(height: 16),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    //Facebook Login
                    GestureDetector(
                      onTap: () {},
                      child: socialLoginContainer(
                        child: SvgPicture.asset(fbSvg),
                      ),
                    ),
                    const SizedBox(width: 12),
                    //Google Login
                    GestureDetector(
                      onTap: () {},
                      child: socialLoginContainer(
                        child: SvgPicture.asset(googleSvg),
                      ),
                    ),
                    const SizedBox(width: 12),
                    //LinkedIn Login
                    GestureDetector(
                      onTap: () {},
                      child: socialLoginContainer(
                        child: SvgPicture.asset(linklnSvg),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
