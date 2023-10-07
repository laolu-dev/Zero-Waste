part of 'auth_bloc.dart';

class AuthEvent extends Equatable {
  final Map<String, dynamic> payload;
  const AuthEvent({required this.payload});

  @override
  List<Object?> get props => throw UnimplementedError();

  AuthEvent copyWith({Map<String, dynamic>? payload}) {
    return AuthEvent(payload: payload ?? this.payload);
  }
}

class LoginEvent extends AuthEvent {
  const LoginEvent({required super.payload});
}

class SignupEvent extends AuthEvent {
  final Map<String, dynamic>? userInfo;
  const SignupEvent({required super.payload, this.userInfo});
}

class RequestPasswordResetEvent extends AuthEvent {
  const RequestPasswordResetEvent({required super.payload});
}

class VerifyPasswordOtpEvent extends AuthEvent {
  const VerifyPasswordOtpEvent({required super.payload});
}

class PasswordResetEvent extends AuthEvent {
  const PasswordResetEvent({required super.payload});
}

class VerifyEmailEvent extends AuthEvent {
  final String? otp;
  const VerifyEmailEvent({required super.payload, this.otp});
}
