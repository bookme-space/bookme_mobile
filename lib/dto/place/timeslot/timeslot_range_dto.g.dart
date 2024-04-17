// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeslot_range_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeslotRangeDto _$TimeslotRangeDtoFromJson(Map<String, dynamic> json) =>
    TimeslotRangeDto(
      start: TimeRangeItemDto.fromJson(json['start'] as Map<String, dynamic>),
      end: TimeRangeItemDto.fromJson(json['end'] as Map<String, dynamic>),
      day: json['day'] as String?,
    );

Map<String, dynamic> _$TimeslotRangeDtoToJson(TimeslotRangeDto instance) =>
    <String, dynamic>{
      'day': instance.day,
      'start': instance.start,
      'end': instance.end,
    };
