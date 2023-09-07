// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String? error) error,
    required TResult Function(Object data) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String? error)? error,
    TResult? Function(Object data)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String? error)? error,
    TResult Function(Object data)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoading value) loading,
    required TResult Function(AppIdle value) idle,
    required TResult Function(AppError value) error,
    required TResult Function(AppData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoading value)? loading,
    TResult? Function(AppIdle value)? idle,
    TResult? Function(AppError value)? error,
    TResult? Function(AppData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoading value)? loading,
    TResult Function(AppIdle value)? idle,
    TResult Function(AppError value)? error,
    TResult Function(AppData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppLoadingCopyWith<$Res> {
  factory _$$AppLoadingCopyWith(
          _$AppLoading value, $Res Function(_$AppLoading) then) =
      __$$AppLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLoadingCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppLoading>
    implements _$$AppLoadingCopyWith<$Res> {
  __$$AppLoadingCopyWithImpl(
      _$AppLoading _value, $Res Function(_$AppLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppLoading implements AppLoading {
  const _$AppLoading();

  @override
  String toString() {
    return 'AppState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String? error) error,
    required TResult Function(Object data) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String? error)? error,
    TResult? Function(Object data)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String? error)? error,
    TResult Function(Object data)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoading value) loading,
    required TResult Function(AppIdle value) idle,
    required TResult Function(AppError value) error,
    required TResult Function(AppData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoading value)? loading,
    TResult? Function(AppIdle value)? idle,
    TResult? Function(AppError value)? error,
    TResult? Function(AppData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoading value)? loading,
    TResult Function(AppIdle value)? idle,
    TResult Function(AppError value)? error,
    TResult Function(AppData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppLoading implements AppState {
  const factory AppLoading() = _$AppLoading;
}

/// @nodoc
abstract class _$$AppIdleCopyWith<$Res> {
  factory _$$AppIdleCopyWith(_$AppIdle value, $Res Function(_$AppIdle) then) =
      __$$AppIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppIdleCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppIdle>
    implements _$$AppIdleCopyWith<$Res> {
  __$$AppIdleCopyWithImpl(_$AppIdle _value, $Res Function(_$AppIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppIdle implements AppIdle {
  const _$AppIdle();

  @override
  String toString() {
    return 'AppState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String? error) error,
    required TResult Function(Object data) data,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String? error)? error,
    TResult? Function(Object data)? data,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String? error)? error,
    TResult Function(Object data)? data,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoading value) loading,
    required TResult Function(AppIdle value) idle,
    required TResult Function(AppError value) error,
    required TResult Function(AppData value) data,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoading value)? loading,
    TResult? Function(AppIdle value)? idle,
    TResult? Function(AppError value)? error,
    TResult? Function(AppData value)? data,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoading value)? loading,
    TResult Function(AppIdle value)? idle,
    TResult Function(AppError value)? error,
    TResult Function(AppData value)? data,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class AppIdle implements AppState {
  const factory AppIdle() = _$AppIdle;
}

/// @nodoc
abstract class _$$AppErrorCopyWith<$Res> {
  factory _$$AppErrorCopyWith(
          _$AppError value, $Res Function(_$AppError) then) =
      __$$AppErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$AppErrorCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppError>
    implements _$$AppErrorCopyWith<$Res> {
  __$$AppErrorCopyWithImpl(_$AppError _value, $Res Function(_$AppError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AppError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppError implements AppError {
  const _$AppError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'AppState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppErrorCopyWith<_$AppError> get copyWith =>
      __$$AppErrorCopyWithImpl<_$AppError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String? error) error,
    required TResult Function(Object data) data,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String? error)? error,
    TResult? Function(Object data)? data,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String? error)? error,
    TResult Function(Object data)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoading value) loading,
    required TResult Function(AppIdle value) idle,
    required TResult Function(AppError value) error,
    required TResult Function(AppData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoading value)? loading,
    TResult? Function(AppIdle value)? idle,
    TResult? Function(AppError value)? error,
    TResult? Function(AppData value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoading value)? loading,
    TResult Function(AppIdle value)? idle,
    TResult Function(AppError value)? error,
    TResult Function(AppData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AppError implements AppState {
  const factory AppError({final String? error}) = _$AppError;

  String? get error;
  @JsonKey(ignore: true)
  _$$AppErrorCopyWith<_$AppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppDataCopyWith<$Res> {
  factory _$$AppDataCopyWith(_$AppData value, $Res Function(_$AppData) then) =
      __$$AppDataCopyWithImpl<$Res>;
  @useResult
  $Res call({Object data});
}

/// @nodoc
class __$$AppDataCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppData>
    implements _$$AppDataCopyWith<$Res> {
  __$$AppDataCopyWithImpl(_$AppData _value, $Res Function(_$AppData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AppData(
      data: null == data ? _value.data : data,
    ));
  }
}

/// @nodoc

class _$AppData implements AppData {
  const _$AppData({required this.data});

  @override
  final Object data;

  @override
  String toString() {
    return 'AppState.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppDataCopyWith<_$AppData> get copyWith =>
      __$$AppDataCopyWithImpl<_$AppData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String? error) error,
    required TResult Function(Object data) data,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String? error)? error,
    TResult? Function(Object data)? data,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String? error)? error,
    TResult Function(Object data)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoading value) loading,
    required TResult Function(AppIdle value) idle,
    required TResult Function(AppError value) error,
    required TResult Function(AppData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoading value)? loading,
    TResult? Function(AppIdle value)? idle,
    TResult? Function(AppError value)? error,
    TResult? Function(AppData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoading value)? loading,
    TResult Function(AppIdle value)? idle,
    TResult Function(AppError value)? error,
    TResult Function(AppData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AppData implements AppState {
  const factory AppData({required final Object data}) = _$AppData;

  Object get data;
  @JsonKey(ignore: true)
  _$$AppDataCopyWith<_$AppData> get copyWith =>
      throw _privateConstructorUsedError;
}
