import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';

class Authentication extends ChangeNotifier {
  bool _visiblePassword = false;
  bool _obscureText = true;
  bool _hasBeenPressed = false;
  String _userType = '';

  bool get visiblePassword => _visiblePassword;
  bool get obscureText => _obscureText;
  bool get hasBeenPressed => _hasBeenPressed;
  String get farmerType => _userType;

  void showPassword() {
    _visiblePassword = !_visiblePassword;
    notifyListeners();
  }

  void textShow() {
    _obscureText = !_obscureText;
    notifyListeners();
  }

  selectType(String type) {
    _hasBeenPressed = !_hasBeenPressed;
    _userType = type;
    notifyListeners();
  }
}
