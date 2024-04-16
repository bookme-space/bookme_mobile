import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_data_dto.freezed.dart';
part 'token_data_dto.g.dart';

@freezed
class TokenDataDto with _$TokenDataDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )

  const factory TokenDataDto({
    @JsonKey(name: "access") required String accessToken,
    @JsonKey(name: "refresh") required String refreshToken,
    @JsonKey(name: "exp") required int expiresIn,
  }) = _TokenDataDto;

  factory TokenDataDto.fromJson(Map<String, Object?> json) => _$TokenDataDtoFromJson(json);
}
