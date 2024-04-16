
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'time_range_item_dto.g.dart';

@JsonSerializable()
class TimeRangeItemDto extends Equatable {
  const TimeRangeItemDto({
    required this.timestamp,
    required this.hours,
    required this.minutes,
  });

  final int timestamp;

  final int hours;

  final int minutes;

  factory TimeRangeItemDto.fromJson(Map<String, dynamic> json) => _$TimeRangeItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TimeRangeItemDtoToJson(this);


  @override
  List<Object> get props => [timestamp, hours, minutes];
}