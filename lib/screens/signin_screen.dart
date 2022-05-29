import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(appImage, width: 75, height: 75),
              const SizedBox(height: 15),
              Text(
                "Login to your Account",
                style: textStyleOne,
              ),
              const SizedBox(height: 38),
              inputContainer(
                color: inputWhite,
                child: TextField(
                  decoration: inputDecoration(
                    labelText: "Email",
                  ),
                ),
              ),
              const SizedBox(height: 16),
              inputContainer(
                color: inputWhite,
                child: TextField(
                  decoration: inputDecoration(labelText: "Password"),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                constraints:
                    const BoxConstraints.expand(height: 15, width: 400),
                child: Text(
                  "Forget password",
                  style: TextStyle(color: colorGreen, fontSize: 14),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 52,
                constraints: const BoxConstraints(maxWidth: 400),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(minimumSize: Size.infinite),
                  child: const Text("Sign in", style: TextStyle(fontSize: 20)),
                ),
              ),
              const SizedBox(height: 16),
              Wrap(
                children: [
                  const Text("Don't have an Account? ",
                      style: TextStyle(fontSize: 16)),
                  GestureDetector(
                      child: Text("Sign up",
                          style: TextStyle(fontSize: 16, color: colorGreen)))
                ],
              ),
              const SizedBox(height: 13),
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Row(
                  children: [
                    Expanded(child: Divider(thickness: 1, color: lineColor)),
                    const SizedBox(width: 15),
                    const Text("OR"),
                    const SizedBox(width: 15),
                    Expanded(child: Divider(thickness: 1, color: lineColor)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
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
    );
  }
}
