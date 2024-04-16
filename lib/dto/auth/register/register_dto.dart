import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_dto.g.dart';

@JsonSerializable()
class RegisterDto extends Equatable {

  const RegisterDto({
    required this.email,
    required this.password,
    required this.firstname,
    required this.lastname
  });

  final String email;

  final String password;

  final String firstname;

  final String lastname;

  factory RegisterDto.fromJson(Map<String, dynamic> json) => _$RegisterDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterDtoToJson(this);

  @override
  List<Object> get props => [email, password];
}