// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_token_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JwtTokenPair {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  DateTime get expiresIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JwtTokenPairCopyWith<JwtTokenPair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtTokenPairCopyWith<$Res> {
  factory $JwtTokenPairCopyWith(
      JwtTokenPair value, $Res Function(JwtTokenPair) then) =
  _$JwtTokenPairCopyWithImpl<$Res, JwtTokenPair>;
  @useResult
  $Res call({String accessToken, String refreshToken, DateTime expiresIn});
}

/// @nodoc
class _$JwtTokenPairCopyWithImpl<$Res, $Val extends JwtTokenPair>
    implements $JwtTokenPairCopyWith<$Res> {
  _$JwtTokenPairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiresIn = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
      as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
      as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
      as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JwtTokenPairImplCopyWith<$Res>
    implements $JwtTokenPairCopyWith<$Res> {
  factory _$$JwtTokenPairImplCopyWith(
      _$JwtTokenPairImpl value, $Res Function(_$JwtTokenPairImpl) then) =
  __$$JwtTokenPairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken, DateTime expiresIn});
}

/// @nodoc
class __$$JwtTokenPairImplCopyWithImpl<$Res>
    extends _$JwtTokenPairCopyWithImpl<$Res, _$JwtTokenPairImpl>
    implements _$$JwtTokenPairImplCopyWith<$Res> {
  __$$JwtTokenPairImplCopyWithImpl(
      _$JwtTokenPairImpl _value, $Res Function(_$JwtTokenPairImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiresIn = null,
  }) {
    return _then(_$JwtTokenPairImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
      as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
      as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
      as DateTime,
    ));
  }
}

/// @nodoc


class _$JwtTokenPairImpl extends _JwtTokenPair {
  const _$JwtTokenPairImpl(
      {required this.accessToken,
        required this.refreshToken,
        required this.expiresIn})
      : super._();

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final DateTime expiresIn;

  @override
  String toString() {
    return 'JwtTokenPair(accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtTokenPairImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, expiresIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtTokenPairImplCopyWith<_$JwtTokenPairImpl> get copyWith =>
      __$$JwtTokenPairImplCopyWithImpl<_$JwtTokenPairImpl>(this, _$identity);
}

abstract class _JwtTokenPair extends JwtTokenPair {
  const factory _JwtTokenPair(
      {required final String accessToken,
        required final String refreshToken,
        required final DateTime expiresIn}) = _$JwtTokenPairImpl;
  const _JwtTokenPair._() : super._();

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  DateTime get expiresIn;
  @override
  @JsonKey(ignore: true)
  _$$JwtTokenPairImplCopyWith<_$JwtTokenPairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
