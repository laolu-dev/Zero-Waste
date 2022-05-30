// import 'dart:async';

import 'package:flutter/foundation.dart';

class AppStateManager extends ChangeNotifier {
  // bool _initialized = false;
  bool _isOnboardingLastPage = false;
  bool _onboardingComplete = false;

  // bool get isInitialized => _initialized;
  bool get isOnboardingLastPage => _isOnboardingLastPage;
  bool get isOnboardingComplete => _onboardingComplete;

  // void initializeApp() {
  //     Timer(
  //       const Duration(milliseconds: 300),
  //       () {
  //         _initialized = true;
  //         notifyListeners();
  //       },
  //     );
  //   }
  void onboardingLastPage(bool isLast) {
    _isOnboardingLastPage = isLast;
    notifyListeners();
  }
  void completeOnboarding() {
    _onboardingComplete = true;
    notifyListeners();
  }
}
