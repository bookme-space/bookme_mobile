import 'package:bookme_mobile/dto/place/timerange/time_range_item_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'timeslot_range_dto.g.dart';


@JsonSerializable()
class TimeslotRangeDto extends Equatable {
  const TimeslotRangeDto({
    required this.start,
    required this.end,
    this.day,
  });

  final String? day;

  final TimeRangeItemDto start;

  final TimeRangeItemDto end;

  factory TimeslotRangeDto.fromJson(Map<String, dynamic> json) => _$TimeslotRangeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TimeslotRangeDtoToJson(this);

  @override
  List<Object> get props => [start.props, start.props];
}