
import 'package:bookme_mobile/dto/place/timeslot/timeslot_range_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'seat_dto.g.dart';

@JsonSerializable()
class SeatDto extends Equatable {

  const SeatDto({
    required this.id,
    required this.name,
    required this.capacity,
    required this.isBookedByMe,
    required this.timeslots
  });


  final String id;

  final String? name;

  final String capacity;

  final bool isBookedByMe;

  final List<TimeslotRangeDto> timeslots;

  factory SeatDto.fromJson(Map<String, dynamic> json) => _$SeatDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SeatDtoToJson(this);

  @override
  List<Object> get props => [id, timeslots.length];
}
