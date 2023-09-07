import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/config/router/route_utils.dart';
import 'package:zero_waste/config/themes/light_theme.dart';
import 'package:zero_waste/features/auth/presenation/controller/type_controller.dart';

import 'core/service/local_storage.dart';
import 'core/utils/shared_prefs_keys.dart';
import 'features/chats/presentation/controller/add_new_conversation.dart';
import 'features/chats/presentation/controller/chat_data.dart';
import 'features/feed/presentation/controller/feed_data.dart';
import 'features/feed/presentation/controller/market_data.dart';
import 'features/auth/presenation/controller/auth_controller.dart';
import 'features/account/presentation/controller/camera.dart';
import 'features/chats/presentation/controller/connections.dart';
import 'features/products/presentation/controllers/product_data.dart';
import 'config/router/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final initialRoute =
      await SharedPrefs.getOnboardingStatus(SharedPrefsKeys.onBoarded);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChatData()),
        ChangeNotifierProvider(create: (context) => ConnectionsProvider()),
        ChangeNotifierProvider(create: (context) => ConversationsProvider()),
        ChangeNotifierProvider(create: (context) => FeedData()),
        ChangeNotifierProvider(create: (context) => AuthController()),
        ChangeNotifierProvider(create: (context) => ProductData()),
        ChangeNotifierProvider(create: (context) => MarketData()),
        ChangeNotifierProvider(create: (context) => Camera()),
        ChangeNotifierProvider(create: (context) => FarmerTypeController()),
      ],
      child: ZeroWaste(initialRoute: initialRoute),
    ),
  );
}

final GlobalKey<NavigatorState> mainAppKey = GlobalKey<NavigatorState>();

class ZeroWaste extends StatelessWidget {
  final bool initialRoute;
  const ZeroWaste({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: routes,
      initialRoute: initialRoute ? RouteNames.login : RouteNames.splash,
      navigatorKey: mainAppKey,
      theme: LightTheme.theme,
      debugShowCheckedModeBanner: false,
      title: 'Zero Waste',
    );
  }
}
