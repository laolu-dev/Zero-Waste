import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste/core/models/api_result/api_result.dart';
import 'package:zero_waste/core/models/app_state/app_state.dart';
import 'package:zero_waste/features/auth/data/auth_repository.dart';
import '../../../../core/constants/logger.dart';
import '../../../../core/enums/auth_enum.dart';
import '../../../account/domain/user.dart';

class AuthController extends ChangeNotifier {
  final AuthRepository _repo = AuthRepository();

  AppState _appState = const AppState.idle();



  final Map<String, dynamic> _userInfo = {};

  AppState get appState => _appState;

  Map<String, dynamic> get userInfo => _userInfo;

  Farmer? _user;
  AuthState? _authState;

  String? _accessToken;

  Farmer? get user => _user;
  AuthState? get state => _authState;

  String? get token => _accessToken;

  void setUserInfo(Map<String, dynamic> info) =>
      _userInfo.addEntries(info.entries);

  void login(Map<String, dynamic> payload) async {
    _appState = const AppState.loading();
    notifyListeners();

    final apiValue = await _repo.login(payload);
    if (apiValue is ApiSuccess) {
      _appState = AppState.data(data: apiValue.data!);
      notifyListeners();
    } else if (apiValue is ApiError) {
      _appState = AppState.error(error: apiValue.error!);
      notifyListeners();
    }
    _appState = const AppState.idle();
    notifyListeners();
  }

  void signUp(Map<String, dynamic> payload) async {
    _appState = const AppState.loading();
    notifyListeners();

    final apiValue = await _repo.signUp(payload);
    if (apiValue is ApiSuccess) {
      _appState = AppState.data(data: apiValue.data!);
      notifyListeners();
    } else if (apiValue is ApiError) {
      _appState = AppState.error(error: apiValue.error);
      notifyListeners();
    }
    _appState = const AppState.idle();
    notifyListeners();
  }

  Future verifyEmail(Map<String, dynamic> payload) async {
    _authState = AuthState.loading;
    notifyListeners();
    try {
      final res = await _repo.verifyEmail(payload);
      if (res is String) {
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

  Future requestToUpdatePassword(Map<String, dynamic> payload) async {
    _authState = AuthState.loading;
    notifyListeners();
    try {
      final res = await _repo.requestToResetPassword(payload);
      if (res is String) {
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

  Future verifyResetPasswordOtp(Map<String, dynamic> payload) async {
    _authState = AuthState.loading;
    notifyListeners();
    try {
      final res = await _repo.verifyResetOtp(payload);
      if (res is String) {
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

  Future resetPassword(Map<String, dynamic> payload) async {
    _authState = AuthState.loading;
    notifyListeners();
    try {
      final res = await _repo.resetPassword(payload);
      if (res is String) {
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
