// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatDto _$SeatDtoFromJson(Map<String, dynamic> json) => SeatDto(
      id: json['id'] as String,
      name: json['name'] as String?,
      capacity: json['capacity'] as String,
      isBookedByMe: json['isBookedByMe'] as bool,
      timeslots: (json['timeslots'] as List<dynamic>)
          .map((e) => TimeslotRangeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SeatDtoToJson(SeatDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'capacity': instance.capacity,
      'isBookedByMe': instance.isBookedByMe,
      'timeslots': instance.timeslots,
    };
