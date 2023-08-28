import 'dart:async';
import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';
import '../../../core/constants/styles/colors.dart';
import 'board.dart';

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
      const Duration(seconds: 1),
      () => Navigator.pushReplacementNamed(context, OnBoardScreen.id),
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
