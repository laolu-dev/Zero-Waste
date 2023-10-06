// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'success':
      return SuccessUser.fromJson(json);
    case 'error':
      return ErrorUser.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'User',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'success') bool status, UserModel? user)
        success,
    required TResult Function(String? message, String error, int? statusCode)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'success') bool status, UserModel? user)?
        success,
    TResult? Function(String? message, String error, int? statusCode)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'success') bool status, UserModel? user)?
        success,
    TResult Function(String? message, String error, int? statusCode)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessUser value) success,
    required TResult Function(ErrorUser value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessUser value)? success,
    TResult? Function(ErrorUser value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessUser value)? success,
    TResult Function(ErrorUser value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessUserCopyWith<$Res> {
  factory _$$SuccessUserCopyWith(
          _$SuccessUser value, $Res Function(_$SuccessUser) then) =
      __$$SuccessUserCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'success') bool status, UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SuccessUserCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$SuccessUser>
    implements _$$SuccessUserCopyWith<$Res> {
  __$$SuccessUserCopyWithImpl(
      _$SuccessUser _value, $Res Function(_$SuccessUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
  }) {
    return _then(_$SuccessUser(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SuccessUser implements SuccessUser {
  const _$SuccessUser(
      {@JsonKey(name: 'success') required this.status,
      this.user,
      final String? $type})
      : $type = $type ?? 'success';

  factory _$SuccessUser.fromJson(Map<String, dynamic> json) =>
      _$$SuccessUserFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool status;
  @override
  final UserModel? user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.success(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUser &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUserCopyWith<_$SuccessUser> get copyWith =>
      __$$SuccessUserCopyWithImpl<_$SuccessUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'success') bool status, UserModel? user)
        success,
    required TResult Function(String? message, String error, int? statusCode)
        error,
  }) {
    return success(status, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'success') bool status, UserModel? user)?
        success,
    TResult? Function(String? message, String error, int? statusCode)? error,
  }) {
    return success?.call(status, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'success') bool status, UserModel? user)?
        success,
    TResult Function(String? message, String error, int? statusCode)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessUser value) success,
    required TResult Function(ErrorUser value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessUser value)? success,
    TResult? Function(ErrorUser value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessUser value)? success,
    TResult Function(ErrorUser value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessUserToJson(
      this,
    );
  }
}

abstract class SuccessUser implements User {
  const factory SuccessUser(
      {@JsonKey(name: 'success') required final bool status,
      final UserModel? user}) = _$SuccessUser;

  factory SuccessUser.fromJson(Map<String, dynamic> json) =
      _$SuccessUser.fromJson;

  @JsonKey(name: 'success')
  bool get status;
  UserModel? get user;
  @JsonKey(ignore: true)
  _$$SuccessUserCopyWith<_$SuccessUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorUserCopyWith<$Res> {
  factory _$$ErrorUserCopyWith(
          _$ErrorUser value, $Res Function(_$ErrorUser) then) =
      __$$ErrorUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, String error, int? statusCode});
}

/// @nodoc
class __$$ErrorUserCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$ErrorUser>
    implements _$$ErrorUserCopyWith<$Res> {
  __$$ErrorUserCopyWithImpl(
      _$ErrorUser _value, $Res Function(_$ErrorUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$ErrorUser(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorUser implements ErrorUser {
  const _$ErrorUser(
      {this.message, required this.error, this.statusCode, final String? $type})
      : $type = $type ?? 'error';

  factory _$ErrorUser.fromJson(Map<String, dynamic> json) =>
      _$$ErrorUserFromJson(json);

  @override
  final String? message;
  @override
  final String error;
  @override
  final int? statusCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.error(message: $message, error: $error, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorUser &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, error, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorUserCopyWith<_$ErrorUser> get copyWith =>
      __$$ErrorUserCopyWithImpl<_$ErrorUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'success') bool status, UserModel? user)
        success,
    required TResult Function(String? message, String error, int? statusCode)
        error,
  }) {
    return error(message, this.error, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'success') bool status, UserModel? user)?
        success,
    TResult? Function(String? message, String error, int? statusCode)? error,
  }) {
    return error?.call(message, this.error, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'success') bool status, UserModel? user)?
        success,
    TResult Function(String? message, String error, int? statusCode)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, this.error, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessUser value) success,
    required TResult Function(ErrorUser value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessUser value)? success,
    TResult? Function(ErrorUser value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessUser value)? success,
    TResult Function(ErrorUser value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorUserToJson(
      this,
    );
  }
}

abstract class ErrorUser implements User {
  const factory ErrorUser(
      {final String? message,
      required final String error,
      final int? statusCode}) = _$ErrorUser;

  factory ErrorUser.fromJson(Map<String, dynamic> json) = _$ErrorUser.fromJson;

  String? get message;
  String get error;
  int? get statusCode;
  @JsonKey(ignore: true)
  _$$ErrorUserCopyWith<_$ErrorUser> get copyWith =>
      throw _privateConstructorUsedError;
}
