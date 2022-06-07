import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/providers/user_data.dart';
import 'package:zero_waste/screens/auth_screens/login_screen.dart';

import '../../widgets/farmer_type_widget.dart';

class WhyAreYouHere extends StatefulWidget {
  const WhyAreYouHere({Key? key}) : super(key: key);

  @override
  State<WhyAreYouHere> createState() => _WhyAreYouHereState();
}

class _WhyAreYouHereState extends State<WhyAreYouHere> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    final type = Provider.of<UserAuth>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  style: headerText,
                ),
                const SizedBox(height: 27),
                Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 16,
                  spacing: 18,
                  children: [
                    FarmerType(
                      optionText: contentOne,
                      isPressed: () {
                        type.getUsertype(contentOne);
                        setState(() => isSelected = 1);
                      },
                      isSelectedColor: isSelected == 1 ? userTypeColor : white,
                      borderColor: isSelected == 1
                          ? userTypeTextColor2
                          : userTypeTextColor1,
                    ),
                    FarmerType(
                      optionText: contentTwo,
                      isPressed: () {
                        type.getUsertype(contentTwo);
                        setState(() => isSelected = 2);
                      },
                      isSelectedColor: isSelected == 2 ? userTypeColor : white,
                      borderColor: isSelected == 2
                          ? userTypeTextColor2
                          : userTypeTextColor1,
                    ),
                    FarmerType(
                      optionText: contentThree,
                      isPressed: () {
                        type.getUsertype(contentThree);
                        setState(() => isSelected = 3);
                      },
                      isSelectedColor: isSelected == 3 ? userTypeColor : white,
                      borderColor: isSelected == 3
                          ? userTypeTextColor2
                          : userTypeTextColor1,
                    ),
                    FarmerType(
                      optionText: contentFour,
                      isPressed: () {
                        type.getUsertype(contentFour);
                        setState(() => isSelected = 4);
                      },
                      isSelectedColor: isSelected == 4 ? userTypeColor : white,
                      borderColor: isSelected == 4
                          ? userTypeTextColor2
                          : userTypeTextColor1,
                    ),
                  ],
                ),
                const SizedBox(height: 55),
                Container(
                  height: 52,
                  constraints: const BoxConstraints(maxWidth: 327),
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/VerifyPhone'),
                    style: elevatedButtonStyleTwo,
                    child: const Text("Sign In"),
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  children: [
                    Text("Already have an account? ", style: contentText),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      ),
                      child: Text("Login", style: linkText),
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Divider(thickness: 1, color: dividerColor),
                      ),
                      const SizedBox(width: 15),
                      Text("OR", style: orTextStyle),
                      const SizedBox(width: 15),
                      const Expanded(
                        child: Divider(thickness: 1, color: dividerColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: Text(
                    "Login using Social Networks",
                    style: contentText,
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
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
