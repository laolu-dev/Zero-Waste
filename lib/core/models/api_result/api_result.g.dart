// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiSuccess _$$ApiSuccessFromJson(Map<String, dynamic> json) => _$ApiSuccess(
      json['status'] as String?,
      json['data'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiSuccessToJson(_$ApiSuccess instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'runtimeType': instance.$type,
    };

_$ApiError _$$ApiErrorFromJson(Map<String, dynamic> json) => _$ApiError(
      json['error'] as String?,
      json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiErrorToJson(_$ApiError instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'runtimeType': instance.$type,
    };
