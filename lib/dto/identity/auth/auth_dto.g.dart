// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) => AuthDto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      tokenData:
          TokenDataDto.fromJson(json['tokenData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthDtoToJson(AuthDto instance) => <String, dynamic>{
      'user': instance.user,
      'tokenData': instance.tokenData,
    };
