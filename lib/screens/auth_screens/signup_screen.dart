import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/screens/auth_screens/login_screen.dart';
import 'package:zero_waste/screens/auth_screens/why_are_here_screen.dart';

import '../../widgets/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Color inputContainerBorderColor = inputBorderColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 45),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(appImage, width: 75, height: 75),
                  const SizedBox(height: 15),
                  Text("Register an Account", style: textStyleOne),
                  //
                  const SizedBox(height: 15),
                  const TextFields(
                      label: 'Full Name', showText: false, phoneField: false),
                  const SizedBox(height: 16),
                  const TextFields(
                      label: 'PhoneNumber', showText: false, phoneField: true),
                  const SizedBox(height: 16),
                  const TextFields(
                      label: 'Address', showText: false, phoneField: false),
                  const SizedBox(height: 16),
                  const TextFields(
                      label: 'State', showText: false, phoneField: false),
                  const SizedBox(height: 16),
                  const TextFields(
                      label: 'Password', showText: true, phoneField: false),
                  const SizedBox(height: 16),
                  Container(
                    constraints:
                        const BoxConstraints.expand(height: 15, width: 400),
                    child: Text(
                      "Forgot password",
                      style: userTextStyleOne,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 52,
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const WhyAreYouHere(),
                        ),
                      ),
                      style: elevatedButtonStyleTwo,
                      child: const Text("Next"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    children: [
                      Text("Already have an account? ", style: textStyleTwo),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        ),
                        child: Text("Sign in", style: textStyleThree),
                      )
                    ],
                  ),
                  const SizedBox(height: 13),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(thickness: 1, color: lineColor),
                        ),
                        const SizedBox(width: 15),
                        Text("OR", style: textStyleFive),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Divider(thickness: 1, color: lineColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    child: Text(
                      "Login using Social Networks",
                      style: textStyleTwo,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      circleContainer(
                        child: SvgPicture.asset(fbSvg),
                      ),
                      const SizedBox(width: 12),
                      circleContainer(
                        child: SvgPicture.asset(googleSvg),
                      ),
                      const SizedBox(width: 12),
                      circleContainer(
                        child: SvgPicture.asset(linklnSvg),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
