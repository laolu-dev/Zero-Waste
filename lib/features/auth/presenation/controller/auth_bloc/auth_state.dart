// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:zero_waste/core/models/user/user_model.dart';

class AuthState {
  final bool isLoading;
  final bool isDone;
  final bool hasError;

  final String? error;
  final UserModel? user;

  const AuthState({
    required this.isLoading,
    required this.isDone,
    required this.hasError,
    this.user,
    this.error,
  });

  AuthState copyWith({
    bool? isLoading,
    bool? isDone,
    bool? hasError,
    UserModel? user,
    String? error,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      isDone: isDone ?? this.isDone,
      hasError: hasError ?? this.hasError,
      user: user ?? this.user,
      error: error ?? this.error,
    );
  }
}
