import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/chat_data.dart';
import 'package:zero_waste/providers/feed_data.dart';
import 'package:zero_waste/providers/market_data.dart';
import 'package:zero_waste/providers/product_data.dart';
import 'package:zero_waste/providers/user_data.dart';
import 'package:zero_waste/screens/home_screen/feed/feed_screen.dart';
import 'package:zero_waste/screens/home_screen/feed/new_conversation_screen.dart';
import 'package:zero_waste/screens/home_screen/home/home.dart';
import 'package:zero_waste/screens/home_screen/account/account_screen.dart';
import 'package:zero_waste/screens/home_screen/account/profile_screen.dart';
import 'package:zero_waste/screens/forget_password_screens/forgot_password.dart';
import 'package:zero_waste/screens/auth_screens/login_screen.dart';
import 'package:zero_waste/screens/auth_screens/signup_screen.dart';
import 'package:zero_waste/screens/auth_screens/validated_account_screen.dart';
import 'package:zero_waste/screens/auth_screens/verify_phone_screen.dart';
import 'package:zero_waste/screens/auth_screens/why_are_you_here_screen.dart';
import 'package:zero_waste/screens/forget_password_screens/password_verification.dart';
import 'package:zero_waste/screens/forget_password_screens/reset_password.dart';
import 'package:zero_waste/screens/forget_password_screens/reset_success.dart';
import 'package:zero_waste/screens/home_screen/home/connections.dart';
import 'package:zero_waste/screens/home_screen/home/user_types.dart';
import 'package:zero_waste/screens/home_screen/products/product_screen.dart';
import 'package:zero_waste/screens/intro/splash_screen.dart';
import 'package:zero_waste/screens/intro/onboarding_screen.dart';
import 'providers/boarding.dart';
import 'providers/authentication.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        OnBoarding.id: (context) => OnBoarding(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        ForgotPassword.id: (context) => const ForgotPassword(),
        WhyAreYouHere.id: (context) => const WhyAreYouHere(),
        VerifyPhoneScreen.id: (context) => const VerifyPhoneScreen(),
        ResetPassword.id: (context) => const ResetPassword(),
        PasswordVerification.id: (context) => const PasswordVerification(),
        AccountValidScreen.id: (context) => const AccountValidScreen(),
        ResetSuccess.id: (context) => const ResetSuccess(),
        UserCategories.id: (context) => const UserCategories(),
        Connections.id: (context) => const Connections(),
        MyAccount.id: (context) => const MyAccount(),
        ProfileAccount.id: (context) => const ProfileAccount(),
        FeedsPage.id: (context) => const FeedsPage(),
        HomeScreen.id: (context) => const HomeScreen(),
        ProductScreen.id: (context) => const ProductScreen(),
        NewConversationScreen.id: (context) => const NewConversationScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Zero Waste',
    );
  }
}
