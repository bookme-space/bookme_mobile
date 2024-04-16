import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'position_dto.g.dart';

@JsonSerializable()
class PositionDto extends Equatable {

  const PositionDto({required this.lat, required this.long});

  final double lat;

  final double long;

  factory PositionDto.fromJson(Map<String, dynamic> json) => _$PositionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PositionDtoToJson(this);

  @override
  List<Object> get props => [lat, long];
}