import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UserAuth extends ChangeNotifier {
  String _name = '';
  String _phoneNo = '';
  String _address = '';
  String _state = '';
  String _password = '';
  String _userType = '';
  File? _profileImage;

  String get name => _name;
  String get phoneNo => _phoneNo;
  String get address => _address;
  String get state => _state;
  String get password => _password;
  String get userType => _userType;
  File? get profileImage => _profileImage;

  void getName(String value) {
    _name = value;
    notifyListeners();
  }

  void getPhone(String value) {
    _phoneNo = value;
    notifyListeners();
  }

  void getAddress(String value) {
    _address = value;
    notifyListeners();
  }

  void getState(String value) {
    _state = value;
    notifyListeners();
  }

  void getPassword(String value) {
    _password = value;
    notifyListeners();
  }

  void getUsertype(String value) {
    _userType = value;
    notifyListeners();
  }

  void getProfile(File? value) {
    _profileImage = value;
    notifyListeners();
  }
}
