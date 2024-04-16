
import 'package:bookme_mobile/dto/place/timerange/time_range_item_dto.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'time_range_dto.g.dart';

@JsonSerializable()
class TimeRageDto extends Equatable {

  const TimeRageDto({
    required this.start,
    required this.end
  });

  final TimeRangeItemDto start;

  final TimeRangeItemDto end;

  factory TimeRageDto.fromJson(Map<String, dynamic> json) => _$TimeRageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TimeRageDtoToJson(this);

  @override
  List<Object> get props => [start.props, start.props];
}