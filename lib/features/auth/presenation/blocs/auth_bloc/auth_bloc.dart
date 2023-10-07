import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zero_waste/config/router/route_utils.dart';
import 'package:zero_waste/core/models/user/user_model.dart';
import 'package:zero_waste/core/service/local_storage.dart';
import 'package:zero_waste/features/auth/data/auth_repository.dart';
import 'package:zero_waste/features/home/presentation/screens/tabs.dart';
import 'package:zero_waste/main.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthenticationBloc extends Bloc<AuthEvent, AuthState> {
  AuthenticationBloc({required this.repo}) : super(const AuthState.idle()) {
    on<LoginEvent>(login);
    on<SignupEvent>(signup);
    on<VerifyEmailEvent>(verifyEmail);
    on<RequestPasswordResetEvent>(requestPasswordReset);
    on<VerifyPasswordOtpEvent>(verifyPasswordOtp);
    on<PasswordResetEvent>(resetPassword);
  }

  final AuthRepository repo;

  late Map<String, dynamic> userInfo;
  late String _email;

  Map<String, dynamic> get info => userInfo;
  String get email => _email;

  void setUserInfo(Map<String, dynamic> info) => userInfo = info;
  void setEmail(String email) => _email = email;

  Future login(LoginEvent event, Emitter emitState) async {
    emitState(const AuthState.loading());
    final loggedIn = await repo.login(event.payload);
    loggedIn.when(
      success: (status, user) {
        // SharedPrefs.setAccessToken(user!.accessToken!);
        debugPrint(user.toString());
        emitState(AuthState.success(user: user));
        mainAppKey.currentState!.pushNamed(AppPages.id);
      },
      error: (message, error, statusCode) {
        emitState(AuthState.error(error: message));
      },
    );
  }

  Future signup(SignupEvent event, Emitter emitState) async {
    emitState(const AuthState.loading());
    final signup = await repo.signUp(event.payload);
    signup.when(
      success: (status, user) {
        emitState(AuthState.success(user: user));
        mainAppKey.currentState!.pushNamed(RouteNames.otp);
      },
      error: (message, error, statusCode) {
        emitState(AuthState.error(error: message));
      },
    );
  }

  Future verifyEmail(VerifyEmailEvent event, Emitter emitState) async {
    final pin = event.payload["otp"];
    final payload = {"email": _email, "otp": pin};
    emitState(const AuthState.loading());
    await repo.verifyEmail(payload).then((value) {
      value.when(
        success: (status, user) {
          emitState(AuthState.success(user: user));
          mainAppKey.currentState!.pushNamed(RouteNames.verifiedAccount);
        },
        error: (message, error, statusCode) {
          emitState(AuthState.error(error: message));
        },
      );
    });
  }

  Future requestPasswordReset(
      RequestPasswordResetEvent event, Emitter emitState) async {
    emitState(const AuthState.loading());
    await repo.requestToResetPassword(event.payload).then((value) {
      value.when(
        success: (status, user) {
          emitState(AuthState.success(user: user));
          mainAppKey.currentState!.pushNamed(RouteNames.resetOtp);
        },
        error: (message, error, statusCode) {
          emitState(AuthState.error(error: message));
        },
      );
    });
  }

  Future verifyPasswordOtp(
      VerifyPasswordOtpEvent event, Emitter emitState) async {
    emitState(const AuthState.loading());
    await repo.verifyResetOtp(event.payload).then((value) {
      value.when(
        success: (status, user) {
          emitState(AuthState.success(user: user));
          mainAppKey.currentState!.pushNamed(RouteNames.resetPassword);
        },
        error: (message, error, statusCode) {
          emitState(AuthState.error(error: message));
        },
      );
    });
  }

  Future resetPassword(PasswordResetEvent event, Emitter emitState) async {
    emitState(const AuthState.loading());
    await repo.resetPassword(event.payload).then((value) {
      value.when(
        success: (status, user) {
          emitState(AuthState.success(user: user));
          mainAppKey.currentState!.pushNamed(RouteNames.resetSuccess);
        },
        error: (message, error, statusCode) {
          emitState(AuthState.error(error: message));
        },
      );
    });
  }
}
