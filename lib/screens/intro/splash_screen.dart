import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zero_waste/screens/intro/onboarding_screen.dart';
import '../../constants/constant.dart';

class SplashScreen extends StatefulWidget {
  static const id = '/';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacementNamed(context, OnBoarding.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backGroundJpeg),
            fit: BoxFit.cover,
            colorFilter: const ColorFilter.mode(blend, BlendMode.srcOver),
          ),
        ),
        child: Center(
          child: SvgPicture.asset(appImage, width: 168, height: 168),
        ),
      ),
    );
  }
}
