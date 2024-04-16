// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenDataDtoImpl _$$TokenDataDtoImplFromJson(Map<String, dynamic> json) =>
    _$TokenDataDtoImpl(
      accessToken: json['access'] as String,
      refreshToken: json['refresh'] as String,
      expiresIn: json['exp'] as int,
    );

Map<String, dynamic> _$$TokenDataDtoImplToJson(_$TokenDataDtoImpl instance) =>
    <String, dynamic>{
      'access': instance.accessToken,
      'refresh': instance.refreshToken,
      'exp': instance.expiresIn,
    };
