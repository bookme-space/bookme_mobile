// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      role: json['role'] as String,
      email: json['email'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      nickname: json['nickname'] as String?,
      birthdate: json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      avatar: json['avatar'] == null
          ? null
          : AvatarDto.fromJson(json['avatar'] as Map<String, dynamic>),
      position: json['position'] == null
          ? null
          : PositionDto.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'role': instance.role,
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'nickname': instance.nickname,
      'birthdate': instance.birthdate?.toIso8601String(),
      'avatar': instance.avatar,
      'position': instance.position,
    };
