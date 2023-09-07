import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.loading() = AppLoading;
  const factory AppState.idle() = AppIdle;
  const factory AppState.error({String? error}) = AppError;
  const factory AppState.data({required Object data}) = AppData;
}
