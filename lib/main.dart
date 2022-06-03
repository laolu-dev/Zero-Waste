import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/screens/auth_screens/forgot_password.dart';
import 'package:zero_waste/screens/auth_screens/login_screen.dart';
import 'package:zero_waste/screens/auth_screens/password_verification.dart';
import 'package:zero_waste/screens/auth_screens/reset_password.dart';
import 'package:zero_waste/screens/auth_screens/signup_screen.dart';
import 'package:zero_waste/screens/auth_screens/validated_account_screen.dart';
import 'package:zero_waste/screens/auth_screens/verify_phone_screen.dart';
import 'package:zero_waste/screens/auth_screens/why_are_you_here_screen.dart';
import 'package:zero_waste/screens/onboarding_screen.dart';
import './screens/splash_screen.dart';
import 'providers/onboarding.dart';
import 'providers/authentication.dart';
import 'package:zero_waste/screens/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoarding()),
        ChangeNotifierProvider(create: (context) => Authentication())
      ],
      child: const ZeroWaste(),
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
        '/Verify': (context) => const VerifyPhoneScreen(),
        '/ValidateAcc': (context) => const AccountValidScreen(),
        '/ValidateAcc2': (context) => const PasswordResetSuccess(),
        '/PasswordReset': (context) => const PasswordVerification(),
        '/PasswordVerify': (context) => const ResetPassword(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Zero Waste',
    );
  }
}
