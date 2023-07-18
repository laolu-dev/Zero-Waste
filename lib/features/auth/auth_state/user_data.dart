import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../models/user.dart';
import '../../../service/firebase_auth.dart';
import '../screens/signup-login/login_screen.dart';

class UserAuth extends ChangeNotifier {
  // final auth = UserAuthentication();
  // final farmer = UserAuthentication().getUser(email.text);
  final _userForm = Farmer(
    name: '',
    phone: '',
    homeAddress: '',
    state: '',
    typeOfFarmer: '',
    email: '',
  );

  File? _profileImage;

  Farmer get userForm => _userForm;
  File? get profileImage => _profileImage;

  void submitForm(String name, String phone, String homeAddress, String state) {
    _userForm.name = name;
    const countryCode = '+234';
    final val = phone.substring(1);
    final formattedPhone = countryCode + val;
    _userForm.phone = formattedPhone;
    _userForm.homeAddress = homeAddress;
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
