

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'avatar_dto.g.dart';

@JsonSerializable()
class AvatarDto extends Equatable {

  const AvatarDto({
    required this.type,
    required this.original,
    required this.thumbnail,
    required this.updatedAt
  });

  final String type;

  final String original;

  final String thumbnail;

  final DateTime updatedAt;

  factory AvatarDto.fromJson(Map<String, dynamic> json) => _$AvatarDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarDtoToJson(this);

  @override
  List<Object> get props => [type, original, thumbnail, updatedAt];
}