// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      phoneNumber: json['phoneNumber'] as String,
      state: json['state'] as String,
      homeAddress: json['homeAddress'] as String,
      isVerified: json['isVerified'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      farmerType: json['farmerType'] as String,
      accessToken: json['accessToken'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'phoneNumber': instance.phoneNumber,
      'state': instance.state,
      'homeAddress': instance.homeAddress,
      'isVerified': instance.isVerified,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'farmerType': instance.farmerType,
      'accessToken': instance.accessToken,
    };
