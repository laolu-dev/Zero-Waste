import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zero_waste/core/models/user/user_model.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  const factory User.success({
    @JsonKey(name: 'success') required bool status,
    UserModel? user,
  }) = SuccessUser;

  const factory User.error({
    String? message,
    String? error,
    int? statusCode,
  }) = ErrorUser;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
