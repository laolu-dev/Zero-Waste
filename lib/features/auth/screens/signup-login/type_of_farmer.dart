import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/enums/auth_enum.dart';
import 'package:zero_waste/provider/authenticate.dart';
import '../../../../config/res.dart';
import '../../../../widgets/app_button.dart';
import '../../widgets/social_login.dart';
import 'login_screen.dart';
import 'otp_screen.dart';

class WhyAreYouHere extends StatefulWidget {
  static const id = '/type_of_farmer';
  const WhyAreYouHere({Key? key}) : super(key: key);

  @override
  State<WhyAreYouHere> createState() => _WhyAreYouHereState();
}

class _WhyAreYouHereState extends State<WhyAreYouHere> {
  late int? index;

  Widget farmerType({
    required bool selectedFarmer,
    required String text,
    required tap,
  }) {
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
    final user = Provider.of<UserAuth>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            children: [
              Image.asset(Resources.iString.appIcon, width: 90, height: 90),
              const SizedBox(height: 15),
              Text(
                "Why are you here?",
                style: GoogleFonts.jost(
                    color: Resources.color.black,
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
                    selectedFarmer: index == 1,
                    text: 'Crop Farmer',
                    tap: () {
                      setState(() => index = 1);
                      user.getFarmerType('CROP');
                    },
                  ),
                  farmerType(
                    selectedFarmer: index == 2,
                    text: 'Black Solder Fly Farmer',
                    tap: () {
                      setState(() => index = 2);
                      user.getFarmerType('BLACK_SOLDIER');
                    },
                  ),
                  farmerType(
                    selectedFarmer: index == 3,
                    text: 'Fish/Poultry Farmer',
                    tap: () {
                      setState(() => index = 3);
                      user.getFarmerType('FISH_POULTRY');
                    },
                  ),
                  farmerType(
                    selectedFarmer: index == 4,
                    text: 'Manual Labourers',
                    tap: () {
                      setState(() => index = 4);
                      user.getFarmerType('MANUAL');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 55),
              Consumer<UserAuth>(
                builder: (context, auth, child) {
                  return auth.state != null && auth.state == AuthState.loading
                      ? const CircularProgressIndicator()
                      : AppButton(
                          btnName: 'Sign In',
                          btn: () async {
                            await auth.signUp();
                            nav(auth);
                          },
                        );
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
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Resources.color.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 13),
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                            thickness: 1, color: Resources.color.dividerColor)),
                    const SizedBox(width: 15),
                    Text(
                      "OR",
                      style: TextStyle(
                          color: Resources.color.orColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                        child: Divider(
                            thickness: 1, color: Resources.color.dividerColor)),
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
    );
  }

  void nav(UserAuth auth) {
    if (auth.state == AuthState.hasError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(milliseconds: 700),
          content: Text(auth.error!),
        ),
      );
    } else {
      Navigator.pushNamed(context, OtpScreen.id);
    }
  }
}
