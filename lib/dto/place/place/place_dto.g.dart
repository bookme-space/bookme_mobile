// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDto _$PlaceDtoFromJson(Map<String, dynamic> json) => PlaceDto(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      address: json['address'] as String,
      seats: (json['seats'] as List<dynamic>)
          .map((e) => SeatDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      timerange:
          TimeRageDto.fromJson(json['timerange'] as Map<String, dynamic>),
      preview: json['preview'] == null
          ? null
          : PreviewDto.fromJson(json['preview'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlaceDtoToJson(PlaceDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'timerange': instance.timerange,
      'preview': instance.preview,
      'seats': instance.seats,
    };
