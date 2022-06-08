import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zero_waste/widgets/text_field_widget.dart';
import '../../constants/constant.dart';

class ForgotPassword extends StatelessWidget {
  static const id = 'ForgotPassword';

  const ForgotPassword({Key? key}) : super(key: key);

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
                const TextFields(
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
                        context, '/PasswordVerification'),
                    style: elevatedButtonStyleTwo,
                    child: const Text("Reset"),
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  children: [
                    Text("Already have an account? ", style: contentText),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/Login'),
                      child: Text("Login", style: linkText),
                    )
                  ],
                ),
                const SizedBox(height: 13),
                Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(thickness: 1, color: dividerColor)),
                      const SizedBox(width: 15),
                      Text("OR", style: orTextStyle),
                      const SizedBox(width: 15),
                      Expanded(
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
                    socialLoginContainer(
                      child: SvgPicture.asset(fbSvg),
                    ),
                    const SizedBox(width: 12),
                    socialLoginContainer(
                      child: SvgPicture.asset(googleSvg),
                    ),
                    const SizedBox(width: 12),
                    socialLoginContainer(
                      child: SvgPicture.asset(linklnSvg),
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
