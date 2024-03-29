import 'dart:async';
import 'package:flutter/material.dart';
import 'package:zero_waste/config/router/route_utils.dart';
import '../../../core/constants/constants.dart';
import '../../../core/constants/styles/colors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacementNamed(context, RouteNames.onboard),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppConstants.background),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(AppColors.blend, BlendMode.srcOver),
          ),
        ),
        child: Center(
          child: Image.asset(AppConstants.appIcon, width: 168, height: 168),
        ),
      ),
    );
  }
}
