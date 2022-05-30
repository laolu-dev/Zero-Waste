import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/onboarding_screen.dart';
import './screens/splash_screen.dart';
import './models/app_state_manager.dart';

void main() {
  runApp(ZeroWaste());
}

class ZeroWaste extends StatelessWidget {
  ZeroWaste({Key? key}) : super(key: key);
  final _appStateManager = AppStateManager();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => _appStateManager),
      ],
      child: MaterialApp(
        // debugShowMaterialGrid: true,
        debugShowCheckedModeBanner: false,
        title: 'Zero Waste',
        home: Onboarding(),
      ),
    );
  }
}
