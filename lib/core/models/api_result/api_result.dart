import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';
part 'api_result.g.dart';

@freezed
class ApiResult with _$ApiResult {
  const factory ApiResult.success(String? status, Object? data) = ApiSuccess;
  const factory ApiResult.error(String? error, String? message) = ApiError;

  factory ApiResult.fromJson(Map<String, dynamic> json) =>
      _$ApiResultFromJson(json);
}
