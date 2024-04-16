// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenDataDto _$TokenDataDtoFromJson(Map<String, dynamic> json) {
  return _TokenDataDto.fromJson(json);
}

/// @nodoc
mixin _$TokenDataDto {
  @JsonKey(name: "access")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh")
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "exp")
  int get expiresIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDataDtoCopyWith<TokenDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDataDtoCopyWith<$Res> {
  factory $TokenDataDtoCopyWith(
      TokenDataDto value, $Res Function(TokenDataDto) then) =
  _$TokenDataDtoCopyWithImpl<$Res, TokenDataDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "access") String accessToken,
        @JsonKey(name: "refresh") String refreshToken,
        @JsonKey(name: "exp") int expiresIn});
}

/// @nodoc
class _$TokenDataDtoCopyWithImpl<$Res, $Val extends TokenDataDto>
    implements $TokenDataDtoCopyWith<$Res> {
  _$TokenDataDtoCopyWithImpl(this._value, this._then);

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
      as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenDataDtoImplCopyWith<$Res>
    implements $TokenDataDtoCopyWith<$Res> {
  factory _$$TokenDataDtoImplCopyWith(
      _$TokenDataDtoImpl value, $Res Function(_$TokenDataDtoImpl) then) =
  __$$TokenDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "access") String accessToken,
        @JsonKey(name: "refresh") String refreshToken,
        @JsonKey(name: "exp") int expiresIn});
}

/// @nodoc
class __$$TokenDataDtoImplCopyWithImpl<$Res>
    extends _$TokenDataDtoCopyWithImpl<$Res, _$TokenDataDtoImpl>
    implements _$$TokenDataDtoImplCopyWith<$Res> {
  __$$TokenDataDtoImplCopyWithImpl(
      _$TokenDataDtoImpl _value, $Res Function(_$TokenDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiresIn = null,
  }) {
    return _then(_$TokenDataDtoImpl(
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
      as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TokenDataDtoImpl implements _TokenDataDto {
  const _$TokenDataDtoImpl(
      {@JsonKey(name: "access") required this.accessToken,
        @JsonKey(name: "refresh") required this.refreshToken,
        @JsonKey(name: "exp") required this.expiresIn});

  factory _$TokenDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDataDtoImplFromJson(json);

  @override
  @JsonKey(name: "access")
  final String accessToken;
  @override
  @JsonKey(name: "refresh")
  final String refreshToken;
  @override
  @JsonKey(name: "exp")
  final int expiresIn;

  @override
  String toString() {
    return 'TokenDataDto(accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDataDtoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, expiresIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDataDtoImplCopyWith<_$TokenDataDtoImpl> get copyWith =>
      __$$TokenDataDtoImplCopyWithImpl<_$TokenDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenDataDtoImplToJson(
      this,
    );
  }
}

abstract class _TokenDataDto implements TokenDataDto {
  const factory _TokenDataDto(
      {@JsonKey(name: "access") required final String accessToken,
        @JsonKey(name: "refresh") required final String refreshToken,
        @JsonKey(name: "exp") required final int expiresIn}) = _$TokenDataDtoImpl;

  factory _TokenDataDto.fromJson(Map<String, dynamic> json) =
  _$TokenDataDtoImpl.fromJson;

  @override
  @JsonKey(name: "access")
  String get accessToken;
  @override
  @JsonKey(name: "refresh")
  String get refreshToken;
  @override
  @JsonKey(name: "exp")
  int get expiresIn;
  @override
  @JsonKey(ignore: true)
  _$$TokenDataDtoImplCopyWith<_$TokenDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
