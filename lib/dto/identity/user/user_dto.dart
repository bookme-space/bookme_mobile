
import 'package:bookme_mobile/dto/identity/avatar/avatar_dto.dart';
import 'package:bookme_mobile/dto/identity/position/position_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto extends Equatable {

  const UserDto({
    required this.role,
    required this.email,
    required this.firstname,
    required this.lastname,
    this.nickname,
    this.birthdate,
    this.avatar,
    this.position
  });

  final String role;

  final String email;

  final String firstname;

  final String lastname;

  final String? nickname;

  final DateTime? birthdate;

  final AvatarDto? avatar;

  final PositionDto? position;


  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  @override
  List<Object> get props => [role, email, firstname, lastname];
}