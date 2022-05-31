import 'package:flutter/material.dart';
import 'package:zero_waste/screens/signin_screen.dart';
import 'package:zero_waste/screens/splash_screen.dart';
import "package:zero_waste/screens/signup_screen.dart";

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zero Waste',
      home: LoginScreen(),
    ),
  );
}
