import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:zero_waste/providers/chat_data.dart';
import 'package:zero_waste/providers/user_data.dart';
import 'package:zero_waste/screens/Types_of_farmers.dart';
import 'package:zero_waste/screens/home_screen/chat_screen.dart';
import 'package:zero_waste/screens/home_screen/home.dart';
import 'package:zero_waste/screens/home_screen/home_screen.dart';
// import 'package:zero_waste/screens/feed_screen.dart';
import 'package:zero_waste/screens/splash_screen.dart';
import 'package:zero_waste/screens/home_screen/feed_screen.dart';
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
import 'package:zero_waste/screens/home_screen/profile_screen.dart';
import './screens/splash_screen.dart';
import 'providers/boarding.dart';
import 'providers/authentication.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoardingProvider()),
        ChangeNotifierProvider(create: (context) => Authentication()),
        ChangeNotifierProvider(create: (context) => ChatData()),
        ChangeNotifierProvider(create: (context) => CreateUser())
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
        '/OnBoarding': (context) => OnBoarding(),
        '/Login': (context) => const LoginScreen(),
        '/Signup': (context) => const SignUpScreen(),
        '/ForgotPassword': (context) => const ForgotPassword(),
        '/Reason': (context) => const WhyAreYouHere(),
        '/VerifyPhone': (context) => const VerifyPhoneScreen(),
        '/ResetPassword': (context) => const ResetPassword(),
        '/PasswordVerification': (context) => const PasswordVerification(),
        '/AccountValid': (context) => const AccountValidScreen(),
        '/ResetSuccess': (context) => const ResetSuccess(),
        // '/MyAccount': (context) => const MyAccount(),
        '/ProfileAccount': (context) => const ProfileAccount(),
        '/Feeds': (context) => FeedsPage(),
        '/Home': (context) => const HomeScreen(),
        '/Types': (context) => Types(),
        '/Chats': (context) => const ChatScreen()
      },
      debugShowCheckedModeBanner: false,
      title: 'Zero Waste',
    );
  }
}

// import 'dart:js';
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'package:zero_waste/screens/Home.dart';
//
// import 'package:zero_waste/models/chat_data.dart';
//
// import 'package:zero_waste/screens/feed_screen.dart';
//
// import 'package:zero_waste/screens/forget_password_screens/forgot_password.dart';
// import 'package:zero_waste/screens/auth_screens/login_screen.dart';
// import 'package:zero_waste/screens/auth_screens/signup_screen.dart';
// import 'package:zero_waste/screens/auth_screens/validated_account_screen.dart';
// import 'package:zero_waste/screens/auth_screens/verify_phone_screen.dart';
// import 'package:zero_waste/screens/auth_screens/why_are_you_here_screen.dart';
// import 'package:zero_waste/screens/forget_password_screens/password_verification.dart';
// import 'package:zero_waste/screens/forget_password_screens/reset_password.dart';
// import 'package:zero_waste/screens/forget_password_screens/reset_success.dart';
// import 'package:zero_waste/screens/onboarding_screen.dart';
//
// import './screens/splash_screen.dart';
// import 'providers/onboarding.dart';
// import 'providers/authentication.dart';
// import 'package:zero_waste/screens/splash_screen.dart';
//
// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => OnBoarding()),
//         ChangeNotifierProvider(create: (context) => Authentication()),
//         ChangeNotifierProvider(create: (context) => ChatData())
//       ],
//       child: MaterialApp(home: FeedsPage()),
//     ),
//   );
// }
//
// class ZeroWaste extends StatelessWidget {
//   const ZeroWaste({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const SplashScreen(),
//         '/OnBoarding': (context) => Onboarding(),
//         '/Login': (context) => const LoginScreen(),
//         '/Signup': (context) => const SignUpScreen(),
//         '/ForgotPassword': (context) => const ForgotPassword(),
//         '/Reason': (context) => const WhyAreYouHere(),
//         '/VerifyPhone': (context) => const VerifyPhoneScreen(),
//         '/ResetPassword': (context) => const ResetPassword(),
//         '/PasswordVerification': (context) => const PasswordVerification(),
//         '/AccountValid': (context) => const AccountValidScreen(),
//         '/ResetSuccess': (context) => const ResetSuccess(),
//       },
//       debugShowCheckedModeBanner: false,
//       title: 'Zero Waste',
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:zero_waste/screens/Home.dart';
