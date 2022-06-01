import 'package:flutter/material.dart';

class SignupScreenProvider extends ChangeNotifier {
  String username = '';
  int userPhone = 0;
  String userAddress = '';
  String userState = '';

  void updateName(String name) {
    username = name;
    notifyListeners();
  }
}
