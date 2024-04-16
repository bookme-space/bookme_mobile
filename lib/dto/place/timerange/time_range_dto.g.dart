// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_range_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeRageDto _$TimeRageDtoFromJson(Map<String, dynamic> json) => TimeRageDto(
      start: TimeRangeItemDto.fromJson(json['start'] as Map<String, dynamic>),
      end: TimeRangeItemDto.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TimeRageDtoToJson(TimeRageDto instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };
