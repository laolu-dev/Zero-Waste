import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/features/chats/controller/add_new_conversation.dart';
import 'package:zero_waste/features/chats/controller/connections.dart';

import 'providers/list_of_providers.dart';
import 'routes.dart';
import 'shared/res.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChatData()),
        ChangeNotifierProvider(create: (context) => ConnectionsProvider()),
        ChangeNotifierProvider(create: (context) => ConversationsProvider()),
        ChangeNotifierProvider(create: (context) => FeedData()),
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

  // String _landingPage() {
  //   return FirebaseAuth.instance.currentUser == null
  //       ? SplashScreen.id
  //       : LoginScreen.id;
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: routes,
      navigatorKey: mainAppKey,
      // initialRoute: _landingPage(),
      theme: ThemeData(primarySwatch: Resources.color.appColor),
      debugShowCheckedModeBanner: false,
      title: 'Zero Waste',
    );
  }
}
