import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste/models/user.dart';
import 'package:zero_waste/service/firebase_auth.dart';
import '../views/auth/login_screen.dart';

class UserAuth extends ChangeNotifier {
  final auth = UserAuthentication();
  final farmer = UserAuthentication().getUser(email.text);
  final _userForm = Farmer(
    name: '',
    phone: '',
    address: '',
    state: '',
    typeOfFarmer: '',
    email: '',
  );

  File? _profileImage;

  Farmer get userForm => _userForm;
  File? get profileImage => _profileImage;

  void submitForm(String name, String phone, String address, String state) {
    _userForm.name = name;
    const countryCode = '+234';
    final val = phone.substring(1);
    final formattedPhone = countryCode + val;
    _userForm.phone = formattedPhone;
    _userForm.address = address;
    _userForm.state = state;
  }

  void getUsertype(String value) {
    _userForm.typeOfFarmer = value;
    notifyListeners();
  }

  void getProfile(File value) {
    _profileImage = value;
    notifyListeners();
  }
}
