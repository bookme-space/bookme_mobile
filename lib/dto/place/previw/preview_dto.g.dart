// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preview_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviewDto _$PreviewDtoFromJson(Map<String, dynamic> json) => PreviewDto(
      type: json['type'] as int,
      original: json['original'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$PreviewDtoToJson(PreviewDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'original': instance.original,
      'thumbnail': instance.thumbnail,
    };
