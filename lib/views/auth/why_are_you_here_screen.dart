import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/providers/user_data.dart';
import 'package:zero_waste/service/firebase_auth.dart';
import 'package:zero_waste/views/auth/otp_screen.dart';
import 'package:zero_waste/widgets/app_button.dart';
import 'package:zero_waste/widgets/auth_widgets/social_login.dart';
import '../../widgets/auth_widgets/farmer_type_widget.dart';
import 'login_screen.dart';

class WhyAreYouHere extends StatefulWidget {
  static const id = 'WhyAreYouHere';
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
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              children: [
                SvgPicture.asset(appImage, width: 90, height: 90),
                const SizedBox(height: 15),
                Text("Why are you here?", style: headerText),
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
                AppButton(
                  btnName: 'Sign In',
                  btn: () {
                    Navigator.pushNamed(context, OtpScreen.id);
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ", style: contentText),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, LoginScreen.id),
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
                const SocialLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
