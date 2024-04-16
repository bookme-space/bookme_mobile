

import 'package:bookme_mobile/dto/place/previw/preview_dto.dart';
import 'package:bookme_mobile/dto/place/seat/seat_dto.dart';
import 'package:bookme_mobile/dto/place/timerange/time_range_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_dto.g.dart';

@JsonSerializable()
class PlaceDto extends Equatable {
  const PlaceDto({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.seats,
    required this.timerange,
    required this.preview
  });

  final String id;

  final String name;

  final String description;

  final String address;

  final TimeRageDto timerange;

  final PreviewDto? preview;

  final List<SeatDto> seats;

  factory PlaceDto.fromJson(Map<String, dynamic> json) => _$PlaceDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceDtoToJson(this);



  @override
  List<Object> get props => [id, name, address];
}