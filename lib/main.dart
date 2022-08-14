import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/chat_data.dart';
import 'package:zero_waste/providers/feed_data.dart';
import 'package:zero_waste/providers/market_data.dart';
import 'package:zero_waste/providers/product_data.dart';
import 'package:zero_waste/providers/user_data.dart';
import 'package:zero_waste/res/res.dart';
import 'package:zero_waste/routes.dart';
import 'package:zero_waste/views/auth/login_screen.dart';
import 'package:zero_waste/views/intro/splash_screen.dart';
import 'providers/on_board_prov.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoardingProvider()),
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

final GlobalKey<NavigatorState> mainAppKey = GlobalKey<NavigatorState>();

class ZeroWaste extends StatelessWidget {
  const ZeroWaste({Key? key}) : super(key: key);

  String _landingPage() {
    return FirebaseAuth.instance.currentUser == null
        ? SplashScreen.id
        : LoginScreen.id;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: mainAppKey,
      initialRoute: _landingPage(),
      theme: ThemeData(primarySwatch: Resources.color.appColor),
      routes: appRoutes,
      debugShowCheckedModeBanner: false,
      title: 'Zero Waste',
    );
  }
}
