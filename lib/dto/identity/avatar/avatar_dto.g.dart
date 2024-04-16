// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvatarDto _$AvatarDtoFromJson(Map<String, dynamic> json) => AvatarDto(
      type: json['type'] as String,
      original: json['original'] as String,
      thumbnail: json['thumbnail'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AvatarDtoToJson(AvatarDto instance) => <String, dynamic>{
      'type': instance.type,
      'original': instance.original,
      'thumbnail': instance.thumbnail,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
