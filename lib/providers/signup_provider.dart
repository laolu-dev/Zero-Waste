import 'package:flutter/foundation.dart';

class SignUp extends ChangeNotifier {
  bool _visiblePassword = false;
  bool _obscureText = true;

  bool get visiblePassword => _visiblePassword;
  bool get obscureText => _obscureText;

  void showPassword() {
    _visiblePassword = !_visiblePassword;
    notifyListeners();
  }

  textShow() {
    _obscureText = !_obscureText;
    notifyListeners();
  }
}
