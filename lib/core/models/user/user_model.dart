import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel(
      {required String id,
      required String email,
      required String username,
      required String phoneNumber,
      required String state,
      required String homeAddress,
      required bool isVerified,
      required DateTime createdAt,
      required DateTime updatedAt,
      required String farmerType,
     }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
