import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/logger.dart';
import '../../../../core/enums/auth_enum.dart';

import '../../../../core/service/shared_prefs.dart';
import '../../../../core/models/user.dart';
import '../../../../core/service/dio_auth_client.dart';

class UserAuth extends ChangeNotifier {
  Farmer? _user;
  AuthState? _authState;
  String? _error;
  DioAuthClient dio = DioAuthClient();
  String? _accessToken;

  Farmer? get user => _user;
  AuthState? get state => _authState;
  String? get error => _error;
  String? get token => _accessToken;

  void getUserInfo(
    String name,
    String phone,
    String homeAddress,
    String state,
    String email,
    String password,
  ) {
    _user = Farmer(
        username: name,
        farmerType: '',
        homeAddress: homeAddress,
        state: state,
        phoneNumber: phone,
        email: email,
        password: password);
  }

  void getFarmerType(String typeOfFarmer) {
    _user!.farmerType = typeOfFarmer;
  }

  void reset() {
    _authState = null;
    _error = null;
    notifyListeners();
  }

  Future login(String email, String password) async {
    _authState = AuthState.loading;
    notifyListeners();
    try {
      final val = await dio.login(email, password);
      if (val is String) {
        _error = val;
        _authState = AuthState.hasError;
        notifyListeners();
      } else {
        _user = Farmer.fromMap(val);
        SharedPrefs.setAccessToken(
            SharedPrefsKeys.accessToken, val['accessToken']);
        _accessToken =
            await SharedPrefs.getAccessToken(SharedPrefsKeys.accessToken);
        _authState = AuthState.completed;
        notifyListeners();
      }
    } catch (e) {
      logger.e(e);
    }
  }

  Future signUp() async {
    _authState = AuthState.loading;
    notifyListeners();
    try {
      final val = await dio.signUp(_user!);
      if (val is String) {
        _error = val;
        _authState = AuthState.hasError;
        notifyListeners();
      } else {
        _authState = AuthState.completed;
        notifyListeners();
      }
    } catch (e) {
      logger.e(e.toString());
    }
  }

  Future verifyEmail(String otp) async {
    _authState = AuthState.loading;
    notifyListeners();
    try {
      final res = await dio.verifyEmail(_user!.email, otp);
      if (res is String) {
        _error = res;
        _authState = AuthState.hasError;
        notifyListeners();
      } else {
        _authState = AuthState.completed;
        notifyListeners();
      }
    } catch (e) {
      logger.e(e.toString());
    }
  }

  Future requestToUpdatePassword(String email) async {
    _authState = AuthState.loading;
    notifyListeners();
    try {
      final res = await dio.requestToResetPassword(email);
      if (res is String) {
        _error = res;
        _authState = AuthState.hasError;
        notifyListeners();
      } else {
        _authState = AuthState.completed;
        notifyListeners();
      }
    } catch (e) {
      logger.e(e.toString());
    }
  }

  Future verifyResetPasswordOtp(String email, String otp) async {
    _authState = AuthState.loading;
    notifyListeners();
    try {
      final res = await dio.verifyResetOtp(email, otp);
      if (res is String) {
        _error = res;
        _authState = AuthState.hasError;
        notifyListeners();
      } else {
        _authState = AuthState.completed;
        notifyListeners();
      }
    } catch (e) {
      logger.e(e.toString());
    }
  }

  Future resetPassword(String password, String email) async {
    _authState = AuthState.loading;
    notifyListeners();
    try {
      final res = await dio.resetPassword(password, email);
      if (res is String) {
        _error = res;
        _authState = AuthState.hasError;
        notifyListeners();
      } else {
        _authState = AuthState.completed;
        notifyListeners();
      }
    } catch (e) {
      logger.e(e.toString());
    }
  }
}
