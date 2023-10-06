import 'package:equatable/equatable.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zero_waste/config/router/route_utils.dart';
import 'package:zero_waste/features/auth/data/auth_repository.dart';
import 'package:zero_waste/features/auth/presenation/controller/auth_bloc/auth_state.dart';
import 'package:zero_waste/features/home/presentation/screens/tabs.dart';
import 'package:zero_waste/main.dart';

part 'auth_event.dart';

class AuthenticationBloc extends Bloc<AuthEvent, AuthState> {
  AuthenticationBloc({required this.repo})
      : super(
          const AuthState(isLoading: false, isDone: true, hasError: false),
        ) {
    on<LoginEvent>(login);
    on<SignupEvent>(signup);
  }

  final AuthRepository repo;

  late Map<String, dynamic> userInfo;

  Map<String, dynamic> get info => userInfo;

  void setUserInfo(Map<String, dynamic> info) {
    userInfo = info;
  }

  Future login(LoginEvent event, Emitter emitState) async {
    emitState(state.copyWith(isLoading: true));
    final loggedIn = await repo.login(event.payload);
    loggedIn.when(
      success: (status, user) {
        emitState(state.copyWith(isLoading: false, isDone: true, user: user));
        mainAppKey.currentState!.pushNamed(AppPages.id);
      },
      error: (message, error, statusCode) {
        emitState(
            state.copyWith(hasError: true, isLoading: false, error: message));
      },
    );
  }

  Future signup(SignupEvent event, Emitter emitState) async {
    emitState(state.copyWith(isLoading: true));
    final signup = await repo.signUp(event.payload);
    signup.when(
      success: (status, user) {
        emitState(state.copyWith(isLoading: false, isDone: true));
        mainAppKey.currentState!.pushNamed(RouteNames.otp);
      },
      error: (message, error, statusCode) {
        emitState(state.copyWith(isLoading: false, hasError: true));
        // showError(context, error);zerowastetest@hldrive.com
      },
    );
  }

}
