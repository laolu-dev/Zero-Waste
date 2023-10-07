part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.idle() = _IdleState;
  const factory AuthState.loading() = LoadingState;
  const factory AuthState.success({UserModel? user}) = SuccessState;
  const factory AuthState.error({String? error}) = ErrorState;
}
