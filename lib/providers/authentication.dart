import 'package:flutter/foundation.dart';

class Authentication extends ChangeNotifier {
  bool _visiblePassword = false;
  bool _obscureText = true;
  bool _hasBeenPressed = false;

  bool get visiblePassword => _visiblePassword;
  bool get obscureText => _obscureText;
  bool get hasBeenPressed => _hasBeenPressed;

  void showPassword() {
    _visiblePassword = !_visiblePassword;
    notifyListeners();
  }

  void textShow() {
    _obscureText = !_obscureText;
    notifyListeners();
  }

  void selectType() {
    _hasBeenPressed = !_hasBeenPressed;
    notifyListeners();
  }
}
