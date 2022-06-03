import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/screens/auth_screens/verify_phone_screen.dart';
import 'package:zero_waste/screens/profile_screen.dart';
import './screens/splash_screen.dart';
import 'providers/app_state_manager.dart';
import 'providers/signup_provider.dart';
import 'package:zero_waste/screens/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppStateManager()),
        ChangeNotifierProvider(create: (context) => SignUp())
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
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      title: 'Zero Waste',
      home: const SplashScreen(),
    );
  }
}
