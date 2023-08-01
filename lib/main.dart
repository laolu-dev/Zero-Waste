import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/utils/shared_prefs.dart';
import 'features/home/screens/tabs.dart';
import 'features/onboarding/screens/splash_screen.dart';
import 'utils/config/res.dart';
import 'provider/add_new_conversation.dart';
import 'provider/authenticate.dart';
import 'provider/camera.dart';
import 'provider/chat_data.dart';
import 'provider/connections.dart';
import 'provider/feed_data.dart';
import 'provider/market_data.dart';
import 'provider/product_data.dart';
import 'utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final token = await SharedPrefs.getAccessToken(SharedPrefsKeys.accessToken);
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
        ChangeNotifierProvider(create: (context) => Camera())
      ],
      child: ZeroWaste(accessToken: token),
    ),
  );
}

final GlobalKey<NavigatorState> mainAppKey = GlobalKey<NavigatorState>();

class ZeroWaste extends StatelessWidget {
  final String? accessToken;
  const ZeroWaste({Key? key, this.accessToken}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: routes,
      initialRoute: accessToken != null ? AppPages.id : SplashScreen.id,
      navigatorKey: mainAppKey,
      theme: ThemeData(primarySwatch: Resources.color.appColor),
      debugShowCheckedModeBanner: false,
      title: 'Zero Waste',
    );
  }
}
