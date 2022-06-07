import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/chat_data.dart';
import 'package:zero_waste/providers/feed_data.dart';
import 'package:zero_waste/providers/home_nav.dart';
import 'package:zero_waste/providers/market_data.dart';
import 'package:zero_waste/providers/product_data.dart';
import 'package:zero_waste/providers/user_data.dart';
import 'package:zero_waste/screens/home_screen/account/account_screen.dart';
import 'package:zero_waste/screens/home_screen/feed/chat_screen.dart';
import 'package:zero_waste/screens/home_screen/feed/feed_screen.dart';
import 'package:zero_waste/screens/home_screen/home.dart';
import 'package:zero_waste/screens/home_screen/home/Connections.dart';
import 'package:zero_waste/screens/home_screen/home/user_types.dart';
import 'package:zero_waste/screens/home_screen/products/product_screen.dart';
import 'package:zero_waste/screens/intro/splash_screen.dart';
import 'package:zero_waste/screens/forget_password_screens/forgot_password.dart';
import 'package:zero_waste/screens/auth_screens/login_screen.dart';
import 'package:zero_waste/screens/auth_screens/signup_screen.dart';
import 'package:zero_waste/screens/auth_screens/validated_account_screen.dart';
import 'package:zero_waste/screens/auth_screens/verify_phone_screen.dart';
import 'package:zero_waste/screens/auth_screens/why_are_you_here_screen.dart';
import 'package:zero_waste/screens/forget_password_screens/password_verification.dart';
import 'package:zero_waste/screens/forget_password_screens/reset_password.dart';
import 'package:zero_waste/screens/forget_password_screens/reset_success.dart';
import 'package:zero_waste/screens/intro/onboarding_screen.dart';
import 'package:zero_waste/screens/home_screen/account/profile_screen.dart';
import 'screens/intro/splash_screen.dart';
import 'providers/boarding.dart';
import 'providers/authentication.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoardingProvider()),
        ChangeNotifierProvider(create: (context) => Authentication()),
        ChangeNotifierProvider(create: (context) => ChatData()),
        ChangeNotifierProvider(create: (context) => FeedData()),
        ChangeNotifierProvider(create: (context) => ChatData()),
        ChangeNotifierProvider(create: (context) => UserAuth()),
        ChangeNotifierProvider(create: (context) => ProductData()),
        ChangeNotifierProvider(create: (context) => MarketData()),
        ChangeNotifierProvider(create: (context) => HomeNav()),
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
        '/Home': (context) => const HomeScreen(),
        '/Feeds': (context) => const FeedsPage(),
        '/Products': (context) => const ProductScreen(),
        '/MyAccount': (context) => const MyAccount(),
        // '/Chats' : (context) => ChatScreen(customerUserChatInfo: customerUserChatInfo),
        '/ProfileAccount': (context) => const ProfileAccount(),
        '/Types': (context) => const UserCategories(),
        '/Connections': (context) => const Connections(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Zero Waste',
    );
  }
}
