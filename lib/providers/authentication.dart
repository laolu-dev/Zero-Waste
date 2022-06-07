import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Authentication extends ChangeNotifier {
  bool _visiblePassword = true;
  bool _hasBeenPressed = false;

  bool get visiblePassword => _visiblePassword;
  bool get hasBeenPressed => _hasBeenPressed;

  void showPassword() {
    _visiblePassword = !_visiblePassword;
    notifyListeners();
  }

  selectType(String type) {
    _hasBeenPressed = !_hasBeenPressed;
    notifyListeners();
  }
}
