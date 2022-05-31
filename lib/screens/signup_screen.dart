import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/screens/signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Color inputContainrBrdrColor = inputBorderColor;

  void changeBorder() {
    setState(() {
      inputContainrBrdrColor = colorGreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 45),
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
                const SizedBox(height: 15),
                inputContainer(
                  borderColor: inputContainrBrdrColor,
                  color: inputWhite,
                  child: TextField(
                    decoration: inputDecoration(labelText: "Full Name"),
                  ),
                ),
                const SizedBox(height: 16),
                inputContainer(
                  borderColor: inputContainrBrdrColor,
                  color: inputWhite,
                  child: TextField(
                    decoration: inputDecoration(labelText: "Phone Number"),
                  ),
                ),
                const SizedBox(height: 16),
                inputContainer(
                  borderColor: inputContainrBrdrColor,
                  color: inputWhite,
                  child: TextField(
                    decoration: inputDecoration(labelText: "Home Address"),
                  ),
                ),
                const SizedBox(height: 16),
                inputContainer(
                  borderColor: inputContainrBrdrColor,
                  color: inputWhite,
                  child: TextField(
                    onChanged: (value) => changeBorder(),
                    decoration: inputDecoration(labelText: "State"),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  constraints:
                      const BoxConstraints.expand(height: 15, width: 400),
                  child: Text(
                    "Forget password",
                    style: forgtpwdStyle(),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  height: 52,
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(minimumSize: Size.infinite),
                    child: Text("Next", style: btntxtStyle()),
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  children: [
                    Text("Already have an account? ", style: havAcc()),
                    GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen())),
                        child: Text("Sign in",
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
                      Text(
                        "OR",
                        style: orStyle(),
                      ),
                      const SizedBox(width: 15),
                      Expanded(child: Divider(thickness: 1, color: lineColor)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: Text(
                    "Login using Social Networks",
                    style: socntwkStyle(),
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
    );
  }
}
