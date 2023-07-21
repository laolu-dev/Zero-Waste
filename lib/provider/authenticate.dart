import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste/enums/auth_enum.dart';
import 'package:zero_waste/utils/logger.dart';
import '../../../models/user.dart';

class UserAuth extends ChangeNotifier {
  Farmer? _user;
  AuthState? _authState;
  File? _profileImage;
  
  Farmer? get user => _user;
  AuthState? get state => _authState;
  File? get profileImage => _profileImage;

  Future getUserInfo(
    String name,
    String phone,
    String homeAddress,
    String state,
    String email,
  ) async {
    _authState = AuthState.loading;
    notifyListeners();
    try {
      await Future.delayed(
        const Duration(milliseconds: 5000),
        () {
          _user = Farmer(
              name: name,
              typeOfFarmer: '',
              homeAddress: homeAddress,
              state: state,
              phone: phone,
              email: email);
        },
      ).whenComplete(() {
        _authState = AuthState.completed;
        notifyListeners();
      });
    } catch (e) {
      _authState = AuthState.error;
      logger.d(e);
    }
  }

  Future verifyPhone(String code) async {
    try {
      _authState = AuthState.loading;
      notifyListeners();
      await Future.delayed(
        const Duration(seconds: 4),
        () {
          if (code.isEmpty) {
            logger.i('Enter a valid code');
          } else {
            logger.i('Code is valid');
          }
        },
      ).whenComplete(() {
        _authState = AuthState.completed;
        notifyListeners();
      });
    } catch (e) {
      logger.e(e);
    }
  }

  Future login(String email) async {
    try {
      _authState = AuthState.loading;
      notifyListeners();
      await Future.delayed(
        const Duration(seconds: 4),
        () {
  
          if (email.isNotEmpty) {
            logger.e('Incorrect email');
          }
        },
      ).whenComplete(() {
        _authState = AuthState.completed;
        notifyListeners();
      });
    } catch (error) {
      logger.e(error);
    }
  }

  void getFarmerType(String typeOfFarmer) {
    _user!.typeOfFarmer = typeOfFarmer;
  }

  void getProfileImage(File value) {
    _profileImage = value;
    notifyListeners();
  }
}
