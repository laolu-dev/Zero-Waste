import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:zero_waste/config/router/route_utils.dart';
import 'package:zero_waste/core/constants/constants.dart';
import 'package:zero_waste/main.dart';
import 'package:zero_waste/widgets/app_button.dart';

class ResetSuccess extends StatelessWidget {
  const ResetSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 123.5),
          child: Column(
            children: [
              Image.asset(AppConstants.success),
              const SizedBox(height: 30),
              Text(
                'Password Changed Successfully',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.jost(fontSize: 28, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 57.5),
              AppButton(
                btnName: 'Login',
                btn: () => mainAppKey.currentState!.pushNamedAndRemoveUntil(
                    RouteNames.login,
                    (route) => route.settings.name == RouteNames.login),
              )
            ],
          ),
        ),
      ),
    );
  }
}
