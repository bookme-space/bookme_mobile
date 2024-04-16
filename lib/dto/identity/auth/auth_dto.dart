import 'package:bookme_mobile/dto/identity/token_data/token_data_dto.dart';
import 'package:bookme_mobile/dto/identity/user/user_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_dto.g.dart';

@JsonSerializable()
class AuthDto extends Equatable {

  const AuthDto({required this.user, required this.tokenData});

  final UserDto user;

  final TokenDataDto tokenData;

  factory AuthDto.fromJson(Map<String, dynamic> json) => _$AuthDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthDtoToJson(this);

  @override
  List<Object> get props => [user.email, tokenData.accessToken];

}