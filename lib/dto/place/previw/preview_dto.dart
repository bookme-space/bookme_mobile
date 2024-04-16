

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'preview_dto.g.dart';

@JsonSerializable()
class PreviewDto extends Equatable {
  const PreviewDto({
    required this.type,
    required this.original,
    required this.thumbnail
  });

  final int type;

  final String original;

  final String thumbnail;

  factory PreviewDto.fromJson(Map<String, dynamic> json) => _$PreviewDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewDtoToJson(this);

  @override
  List<Object> get props => [type, original, thumbnail];
}