import 'package:flutter/material.dart';
import '../features/products/screens/products.dart';

import '../features/account/screens/my_account.dart';
import '../features/account/screens/profile.dart';
import '../features/home/screens/connections.dart';
import '../features/home/screens/farmer_types.dart';
import '../features/home/screens/tabs.dart';
import '../models/user.dart';

import '../features/auth/screens/signup-login/login_screen.dart';
import '../features/auth/screens/signup-login/otp_screen.dart';
import '../features/auth/screens/signup-login/signup_screen.dart';
import '../features/auth/screens/signup-login/verified_account.dart';
import '../features/auth/screens/signup-login/type_of_farmer.dart';
import '../features/auth/screens/forget_password/forgot_password.dart';
import '../features/auth/screens/forget_password/password_verification.dart';
import '../features/auth/screens/forget_password/reset_password.dart';
import '../features/auth/screens/forget_password/reset_success.dart';
import '../features/feed/screens/feeds.dart';
import '../features/chats/screens/new_conversation_screen.dart';

import '../features/onboarding/screens/board.dart';
import '../features/onboarding/screens/splash_screen.dart';
import '../features/unknown_page.dart';

Route<dynamic>? routes(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.id:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case OnBoardScreen.id:
      return MaterialPageRoute(builder: (context) => const OnBoardScreen());
    case LoginScreen.id:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case ForgotPassword.id:
      return MaterialPageRoute(builder: (context) => const ForgotPassword());
    case SignUpScreen.id:
      return MaterialPageRoute(builder: (context) => const SignUpScreen());
    case WhyAreYouHere.id:
      return MaterialPageRoute(
          builder: (context) =>
              WhyAreYouHere(user: settings.arguments as Farmer?));
    case OtpScreen.id:
      return MaterialPageRoute(
          builder: (context) => OtpScreen(user: settings.arguments as Farmer?));
    case ResetPassword.id:
      return MaterialPageRoute(builder: (context) => const ResetPassword());
    case PasswordVerification.id:
      return MaterialPageRoute(
          builder: (context) => const PasswordVerification());
    case VerifiedAccount.id:
      return MaterialPageRoute(builder: (context) => const VerifiedAccount());
    case ResetSuccess.id:
      return MaterialPageRoute(builder: (context) => const ResetSuccess());
    case UserCategories.id:
      return MaterialPageRoute(builder: (context) => const UserCategories());
    case Connections.id:
      return MaterialPageRoute(builder: (context) => const Connections());
    case MyAccount.id:
      return MaterialPageRoute(builder: (context) => const MyAccount());
    case ProfileAccount.id:
      return MaterialPageRoute(builder: (context) => const ProfileAccount());
    case FeedsPage.id:
      return MaterialPageRoute(builder: (context) => const FeedsPage());
    case ProductScreen.id:
      return MaterialPageRoute(builder: (context) => const ProductScreen());
    case AppPages.id:
      return MaterialPageRoute(builder: (context) => const AppPages());
    case NewConversationScreen.id:
      return MaterialPageRoute(
          builder: (context) => const NewConversationScreen());
  }
  return MaterialPageRoute(builder: (context) => const UnknownPage());
}
