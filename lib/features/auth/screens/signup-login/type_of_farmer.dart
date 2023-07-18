import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/constant.dart';
import '../../../../models/user.dart';
import '../../../../shared/res.dart';
import '../../../../widgets/app_button.dart';
import '../../widgets/social_login.dart';
import 'login_screen.dart';
import 'otp_screen.dart';

class WhyAreYouHere extends StatefulWidget {
  static const id = '/type_of_farmer';
  final Farmer? user;
  const WhyAreYouHere({Key? key,  this.user}) : super(key: key);

  @override
  State<WhyAreYouHere> createState() => _WhyAreYouHereState();
}

class _WhyAreYouHereState extends State<WhyAreYouHere> {
  late int? index;

  Widget farmerType(
      {required bool selectedFarmer, required String text, required tap}) {
    return TextButton(
      onPressed: tap,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: selectedFarmer
              ? BorderSide.none
              : const BorderSide(color: Color.fromRGBO(151, 151, 151, 1)),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        fixedSize: const Size(155, 103),
        backgroundColor:
            selectedFarmer ? const Color.fromRGBO(136, 255, 222, 1) : null,
      ),
      child: Text(
        text,
        style: GoogleFonts.jost(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: selectedFarmer
              ? const Color.fromRGBO(64, 64, 64, 1)
              : const Color.fromRGBO(128, 128, 128, 1),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
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
                  "Why are you here?",
                  style: GoogleFonts.jost(
                      color: headColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 27),
                Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 16,
                  spacing: 18,
                  children: [
                    farmerType(
                        tap: () {
                          setState(() => index = 0);
                          // widget.user.typeOfFarmer = 'Crop Farmer';
                        },
                        selectedFarmer: index == 0,
                        text: 'Crop Farmer'),
                    farmerType(
                        tap: () {
                          setState(() => index = 1);
                          // widget.user.typeOfFarmer = 'Black Solder Fly Farmer';
                        },
                        selectedFarmer: index == 1,
                        text: 'Black Solder Fly Farmer'),
                    farmerType(
                        tap: () {
                          setState(() => index = 2);
                          // widget.user.typeOfFarmer = 'Fish/Poultry Farmer';
                        },
                        selectedFarmer: index == 2,
                        text: 'Fish/Poultry Farmer'),
                    farmerType(
                        tap: () {
                          setState(() => index = 3);
                          // widget.user.typeOfFarmer = 'Manual Labourers';
                        },
                        selectedFarmer: index == 3,
                        text: 'Manual Labourers'),
                  ],
                ),
                const SizedBox(height: 55),
                AppButton(
                  btnName: 'Sign In',
                  btn: () {
                    Navigator.pushNamed(context, OtpScreen.id,
                        arguments: widget.user);
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: GoogleFonts.jost(
                          color: const Color.fromRGBO(34, 34, 34, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
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
                Text(
                  "Login using Social Networks",
                  style: GoogleFonts.jost(
                      color: const Color.fromRGBO(34, 34, 34, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
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
