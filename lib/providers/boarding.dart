import 'package:flutter/foundation.dart';

class OnBoardingProvider extends ChangeNotifier {
  bool _isOnBoardingLastPage = false;
  bool _onBoardingComplete = false;

  bool get isOnBoardingLastPage => _isOnBoardingLastPage;
  bool get isOnBoardingComplete => _onBoardingComplete;

  void onBoardingLastPage(bool isLast) {
    _isOnBoardingLastPage = isLast;
    notifyListeners();
  }

  void completeOnBoarding() {
    _onBoardingComplete = true;
    notifyListeners();
  }
}
