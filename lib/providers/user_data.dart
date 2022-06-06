import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CreateUser extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String _name = '';
  final String _phoneNo = '';
  final String _address = '';
  final String _state = '';
  final String _password = '';

  String get name => _name;
  String get phoneNo => _phoneNo;
  String get address => _address;
  String get state => _state;
  String get password => _password;

  void updateName(String name) {
    _name = name;
    notifyListeners();
  }

  void getUserName() {
    nameController.text = _name;
    notifyListeners();
  }

  void getPhoneNo() {
    phoneController.text = _phoneNo;
    notifyListeners();
  }

  void getAddress() {
    addressController.text = _address;
    notifyListeners();
  }

  void getState() {
    stateController.text = _state;
    notifyListeners();
  }

  void getPassword() {
    passwordController.text = _password;
    notifyListeners();
  }
}
