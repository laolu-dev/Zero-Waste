// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessUser _$$SuccessUserFromJson(Map<String, dynamic> json) =>
    _$SuccessUser(
      status: json['success'] as bool,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessUserToJson(_$SuccessUser instance) =>
    <String, dynamic>{
      'success': instance.status,
      'user': instance.user?.toJson(),
      'runtimeType': instance.$type,
    };

_$ErrorUser _$$ErrorUserFromJson(Map<String, dynamic> json) => _$ErrorUser(
      message: json['message'] as String?,
      error: json['error'] as String,
      statusCode: json['statusCode'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorUserToJson(_$ErrorUser instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'statusCode': instance.statusCode,
      'runtimeType': instance.$type,
    };
