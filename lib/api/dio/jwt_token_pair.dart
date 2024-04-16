import 'package:bookme_mobile/dto/identity/token_data/token_data_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_token_pair.freezed.dart';

@freezed
@immutable
class JwtTokenPair with _$JwtTokenPair {
  const JwtTokenPair._();

  const factory JwtTokenPair({
    required String accessToken,
    required String refreshToken,
    required DateTime expiresIn,
  }) = _JwtTokenPair;

  factory JwtTokenPair.fromDto({
    required TokenDataDto dto,
  }) {
    return JwtTokenPair(
      accessToken: dto.accessToken,
      refreshToken: dto.refreshToken,
      expiresIn: DateTime.fromMicrosecondsSinceEpoch(dto.expiresIn),
    );
  }

  bool hasExpired() {
    return expiresIn.isBefore(DateTime.now());
  }
}