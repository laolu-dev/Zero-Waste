import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste/enums/auth_enum.dart';
import 'package:zero_waste/service/dio/dio_client.dart';
import 'package:zero_waste/service/dio/dio_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zero_waste/utils/logger.dart';
import '../../../models/user.dart';

class UserAuth extends ChangeNotifier {
  Farmer? _user;
  AuthState? _authState;
  String? _error;
  DioClient dio = DioClient();
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

  void login(String email, String password) async {
    try {
      _authState = AuthState.loading;
      notifyListeners();
      final val = await dio.login(email, password);
      if (val.containsKey('error')) {
        _error = val["error"];
        _authState = AuthState.hasError;
        notifyListeners();
      } else {
        _user = Farmer.fromMap(val);
        final pref = await SharedPreferences.getInstance();
        pref.setString('accessToken', val["accessToken"]);
        _accessToken = pref.getString('accessToken');
        _authState = AuthState.completed;
        notifyListeners();
      }
    } catch (e) {
      logger.e(e);
    }
  }

  void getFarmerType(String typeOfFarmer) {
    _user!.farmerType = typeOfFarmer;
  }

  Future submitInfo() async {
    try {
      _authState = AuthState.loading;
      notifyListeners();
      await dio.signUp(_user!);
      _authState = AuthState.completed;
      notifyListeners();
    } on DioException catch (e) {
      // var error = AppDioError.fromDioException(e);
      logger.i(e);
    }
  }

  Future verify(String otp) async {
    try {
      _authState = AuthState.loading;
      notifyListeners();
      await dio.verify(_user!.email, otp);
      _authState = AuthState.completed;
      notifyListeners();
    } on DioException catch (e) {
      // var error = AppDioError.fromDioException(e);
      logger.e(e);
    }
  }
}
