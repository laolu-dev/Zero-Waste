// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResult _$ApiResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'success':
      return ApiSuccess.fromJson(json);
    case 'error':
      return ApiError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiResult',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status, Object? data) success,
    required TResult Function(String? error, String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status, Object? data)? success,
    TResult? Function(String? error, String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status, Object? data)? success,
    TResult Function(String? error, String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccess value) success,
    required TResult Function(ApiError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiSuccess value)? success,
    TResult? Function(ApiError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccess value)? success,
    TResult Function(ApiError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<$Res> {
  factory $ApiResultCopyWith(ApiResult value, $Res Function(ApiResult) then) =
      _$ApiResultCopyWithImpl<$Res, ApiResult>;
}

/// @nodoc
class _$ApiResultCopyWithImpl<$Res, $Val extends ApiResult>
    implements $ApiResultCopyWith<$Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiSuccessCopyWith<$Res> {
  factory _$$ApiSuccessCopyWith(
          _$ApiSuccess value, $Res Function(_$ApiSuccess) then) =
      __$$ApiSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String? status, Object? data});
}

/// @nodoc
class __$$ApiSuccessCopyWithImpl<$Res>
    extends _$ApiResultCopyWithImpl<$Res, _$ApiSuccess>
    implements _$$ApiSuccessCopyWith<$Res> {
  __$$ApiSuccessCopyWithImpl(
      _$ApiSuccess _value, $Res Function(_$ApiSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ApiSuccess(
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == data ? _value.data : data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiSuccess implements ApiSuccess {
  const _$ApiSuccess(this.status, this.data, {final String? $type})
      : $type = $type ?? 'success';

  factory _$ApiSuccess.fromJson(Map<String, dynamic> json) =>
      _$$ApiSuccessFromJson(json);

  @override
  final String? status;
  @override
  final Object? data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiResult.success(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiSuccess &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiSuccessCopyWith<_$ApiSuccess> get copyWith =>
      __$$ApiSuccessCopyWithImpl<_$ApiSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status, Object? data) success,
    required TResult Function(String? error, String? message) error,
  }) {
    return success(status, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status, Object? data)? success,
    TResult? Function(String? error, String? message)? error,
  }) {
    return success?.call(status, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status, Object? data)? success,
    TResult Function(String? error, String? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccess value) success,
    required TResult Function(ApiError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiSuccess value)? success,
    TResult? Function(ApiError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccess value)? success,
    TResult Function(ApiError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiSuccessToJson(
      this,
    );
  }
}

abstract class ApiSuccess implements ApiResult {
  const factory ApiSuccess(final String? status, final Object? data) =
      _$ApiSuccess;

  factory ApiSuccess.fromJson(Map<String, dynamic> json) =
      _$ApiSuccess.fromJson;

  String? get status;
  Object? get data;
  @JsonKey(ignore: true)
  _$$ApiSuccessCopyWith<_$ApiSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiErrorCopyWith<$Res> {
  factory _$$ApiErrorCopyWith(
          _$ApiError value, $Res Function(_$ApiError) then) =
      __$$ApiErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error, String? message});
}

/// @nodoc
class __$$ApiErrorCopyWithImpl<$Res>
    extends _$ApiResultCopyWithImpl<$Res, _$ApiError>
    implements _$$ApiErrorCopyWith<$Res> {
  __$$ApiErrorCopyWithImpl(_$ApiError _value, $Res Function(_$ApiError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ApiError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiError implements ApiError {
  const _$ApiError(this.error, this.message, {final String? $type})
      : $type = $type ?? 'error';

  factory _$ApiError.fromJson(Map<String, dynamic> json) =>
      _$$ApiErrorFromJson(json);

  @override
  final String? error;
  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiResult.error(error: $error, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiError &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorCopyWith<_$ApiError> get copyWith =>
      __$$ApiErrorCopyWithImpl<_$ApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status, Object? data) success,
    required TResult Function(String? error, String? message) error,
  }) {
    return error(this.error, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status, Object? data)? success,
    TResult? Function(String? error, String? message)? error,
  }) {
    return error?.call(this.error, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status, Object? data)? success,
    TResult Function(String? error, String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccess value) success,
    required TResult Function(ApiError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiSuccess value)? success,
    TResult? Function(ApiError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccess value)? success,
    TResult Function(ApiError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiErrorToJson(
      this,
    );
  }
}

abstract class ApiError implements ApiResult {
  const factory ApiError(final String? error, final String? message) =
      _$ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) = _$ApiError.fromJson;

  String? get error;
  String? get message;
  @JsonKey(ignore: true)
  _$$ApiErrorCopyWith<_$ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}
