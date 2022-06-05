import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CreateUser extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController stateController = TextEditingController();

  String _name = '';
  int _phoneNo = 0;
  String _address = '';
  String _state = '';

  String get name => _name;
  int get phoneNo => _phoneNo;
  String get address => _address;
  String get state => _state;

  void updateName(String name) {
    _name = name;
    notifyListeners();
  }
}
