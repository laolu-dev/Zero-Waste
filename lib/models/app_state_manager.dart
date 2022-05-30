import 'package:flutter/foundation.dart';

class AppStateManager extends ChangeNotifier {
  bool _isOnboardingLastPage = false;
  bool _onboardingComplete = false;

  bool get isOnboardingLastPage => _isOnboardingLastPage;
  bool get isOnboardingComplete => _onboardingComplete;

  void onboardingLastPage(bool isLast) {
    _isOnboardingLastPage = isLast;
    notifyListeners();
  }
  void completeOnboarding() {
    _onboardingComplete = true;
    notifyListeners();
  }
}
