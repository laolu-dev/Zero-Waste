import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/screens/auth_screens/login_screen.dart';
import 'package:zero_waste/screens/auth_screens/verify_phone_screen.dart';

class WhyAreYouHere extends StatefulWidget {
  const WhyAreYouHere({Key? key}) : super(key: key);

  @override
  State<WhyAreYouHere> createState() => _WhyAreYouHereState();
}

class _WhyAreYouHereState extends State<WhyAreYouHere> {
  bool _hasBeenPressed = false;

  Container farmerType(String textContent) {
    return Container(
      width: 153,
      height: 103,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: lineColor, width: 2.5),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            _hasBeenPressed = !_hasBeenPressed;
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: _hasBeenPressed ? lightGreen : Colors.white,
          primary: wauhBoxtxtColor,
          minimumSize: Size.infinite,
        ),
        child: Text(textContent),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(appImage, width: 75, height: 75),
                  const SizedBox(height: 15),
                  Text(
                    "Why are you here? ",
                    style: textStyleTwo,
                  ),
                  const SizedBox(height: 27),
                  Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 16,
                    spacing: 18,
                    children: [
                      farmerType(contentOne),
                      farmerType(contentTwo),
                      farmerType(contentThree),
                      farmerType(contentFour)
                    ],
                  ),
                  const SizedBox(height: 55),
                  Container(
                    height: 52,
                    constraints: const BoxConstraints(maxWidth: 327),
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const VerifyPhoneScreen(),
                        ),
                      ),
                      style: elevatedButtonStyleTwo,
                      child: const Text("Sign in"),
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
                        child: Text("Login", style: textStyleThree),
                      ),
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
