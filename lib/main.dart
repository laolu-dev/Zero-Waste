import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/chat_data.dart';
import 'package:zero_waste/providers/feed_data.dart';
import 'package:zero_waste/providers/product_data.dart';

import 'package:zero_waste/screens/feed_screen.dart';

import 'package:zero_waste/screens/forget_password_screens/forgot_password.dart';
import 'package:zero_waste/screens/auth_screens/login_screen.dart';
import 'package:zero_waste/screens/auth_screens/signup_screen.dart';
import 'package:zero_waste/screens/auth_screens/validated_account_screen.dart';
import 'package:zero_waste/screens/auth_screens/verify_phone_screen.dart';
import 'package:zero_waste/screens/auth_screens/why_are_you_here_screen.dart';
import 'package:zero_waste/screens/forget_password_screens/password_verification.dart';
import 'package:zero_waste/screens/forget_password_screens/reset_password.dart';
import 'package:zero_waste/screens/forget_password_screens/reset_success.dart';
import 'package:zero_waste/screens/onboarding_screen.dart';
import 'package:zero_waste/screens/product_screen.dart';

import './screens/splash_screen.dart';
import 'providers/onboarding.dart';
import 'providers/authentication.dart';
import 'package:zero_waste/screens/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoarding()),
        ChangeNotifierProvider(create: (context) => Authentication()),
        ChangeNotifierProvider(create: (context) => ChatData()),
        ChangeNotifierProvider(create: (context) => FeedData()),
        ChangeNotifierProvider(create: (context) => ProductData()),
      ],
      child: MaterialApp(home: ProductScreen()),
    ),
  );
}

class ZeroWaste extends StatelessWidget {
  const ZeroWaste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/OnBoarding': (context) => Onboarding(),
        '/Login': (context) => const LoginScreen(),
        '/Signup': (context) => const SignUpScreen(),
        '/ForgotPassword': (context) => const ForgotPassword(),
        '/Reason': (context) => const WhyAreYouHere(),
        '/VerifyPhone': (context) => const VerifyPhoneScreen(),
        '/ResetPassword': (context) => const ResetPassword(),
        '/PasswordVerification': (context) => const PasswordVerification(),
        '/AccountValid': (context) => const AccountValidScreen(),
        '/ResetSuccess': (context) => const ResetSuccess(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Zero Waste',
    );
  }
}
