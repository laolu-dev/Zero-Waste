import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:zero_waste/config/router/route_utils.dart';
import 'package:zero_waste/config/themes/light_theme.dart';
import 'package:zero_waste/features/auth/data/auth_repository.dart';
import 'package:zero_waste/features/auth/presenation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zero_waste/features/auth/presenation/blocs/farmer_type_cubit/farmer_type_cubit.dart';

import 'config/router/routes.dart';
import 'core/service/local_storage.dart';
import 'features/account/presentation/controller/camera.dart';

import 'features/chats/presentation/controller/add_new_conversation.dart';
import 'features/chats/presentation/controller/chat_data.dart';
import 'features/chats/presentation/controller/connections.dart';
import 'features/feed/presentation/controller/feed_data.dart';
import 'features/feed/presentation/controller/market_data.dart';
import 'features/products/presentation/controllers/product_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final initialRoute = await SharedPrefs.getOnboardingStatus();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChatData()),
        ChangeNotifierProvider(create: (context) => ConnectionsProvider()),
        ChangeNotifierProvider(create: (context) => ConversationsProvider()),
        ChangeNotifierProvider(create: (context) => FeedData()),
        ChangeNotifierProvider(create: (context) => ProductData()),
        ChangeNotifierProvider(create: (context) => MarketData()),
        ChangeNotifierProvider(create: (context) => Camera()),
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FarmerTypeCubit()),
        BlocProvider(
          create: (context) => AuthenticationBloc(
            repo: AuthRepository(),
          ),
        ),
      ],
      child: MaterialApp(
        onGenerateRoute: routes,
        initialRoute: initialRoute ? RouteNames.login : RouteNames.splash,
        navigatorKey: mainAppKey,
        theme: LightTheme.theme,
        debugShowCheckedModeBanner: false,
        title: 'Zero Waste',
      ),
    );
  }
}
