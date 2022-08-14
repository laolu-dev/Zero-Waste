import 'package:flutter/material.dart';
import 'package:zero_waste/views/auth/login_screen.dart';
import 'package:zero_waste/views/auth/signup_screen.dart';
import 'package:zero_waste/views/auth/verified_account.dart';
import 'package:zero_waste/views/auth/otp_screen.dart';
import 'package:zero_waste/views/auth/why_are_you_here_screen.dart';
import 'package:zero_waste/views/forget_password_screens/forgot_password.dart';
import 'package:zero_waste/views/forget_password_screens/password_verification.dart';
import 'package:zero_waste/views/forget_password_screens/reset_password.dart';
import 'package:zero_waste/views/forget_password_screens/reset_success.dart';
import 'package:zero_waste/views/home_screen/account/my_account.dart';
import 'package:zero_waste/views/home_screen/account/profile.dart';
import 'package:zero_waste/views/home_screen/feed/feeds.dart';
import 'package:zero_waste/views/home_screen/feed/new_conversation_screen.dart';
import 'package:zero_waste/views/tabs.dart';
import 'package:zero_waste/views/home_screen/home/connections.dart';
import 'package:zero_waste/views/home_screen/home/farmer_types.dart';
import 'package:zero_waste/views/home_screen/products/products.dart';
import 'package:zero_waste/views/intro/onboarding_screen.dart';
import 'package:zero_waste/views/intro/splash_screen.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  SplashScreen.id: (context) => const SplashScreen(),
  OnBoardScreen.id: (context) => const OnBoardScreen(),
  LoginScreen.id: (context) => const LoginScreen(),
  SignUpScreen.id: (context) => const SignUpScreen(),
  ForgotPassword.id: (context) => const ForgotPassword(),
  WhyAreYouHere.id: (context) => const WhyAreYouHere(),
  OtpScreen.id: (context) => const OtpScreen(),
  ResetPassword.id: (context) => const ResetPassword(),
  PasswordVerification.id: (context) => const PasswordVerification(),
  VerifiedAccount.id: (context) => const VerifiedAccount(),
  ResetSuccess.id: (context) => const ResetSuccess(),
  UserCategories.id: (context) => const UserCategories(),
  Connections.id: (context) => const Connections(),
  MyAccount.id: (context) => const MyAccount(),
  ProfileAccount.id: (context) => const ProfileAccount(),
  FeedsPage.id: (context) => const FeedsPage(),
  ProductScreen.id: (context) => const ProductScreen(),
  AppPages.id: (context) => const AppPages(),
  NewConversationScreen.id: (context) => const NewConversationScreen(),
};
