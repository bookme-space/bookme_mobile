// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_range_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeRangeItemDto _$TimeRangeItemDtoFromJson(Map<String, dynamic> json) =>
    TimeRangeItemDto(
      timestamp: json['timestamp'] as int,
      hours: json['hours'] as int,
      minutes: json['minutes'] as int,
    );

Map<String, dynamic> _$TimeRangeItemDtoToJson(TimeRangeItemDto instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'hours': instance.hours,
      'minutes': instance.minutes,
    };
