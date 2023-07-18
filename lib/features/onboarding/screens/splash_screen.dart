import 'dart:async';

import 'package:flutter/material.dart';
import '../../../shared/res.dart';

import '../../../constants/constant.dart';
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
            image: AssetImage(Resources.iString.background),
            fit: BoxFit.cover,
            colorFilter: const ColorFilter.mode(blend, BlendMode.srcOver),
          ),
        ),
        child: Center(
          child:
              Image.asset(Resources.iString.appIcon, width: 168, height: 168),
        ),
      ),
    );
  }
}
