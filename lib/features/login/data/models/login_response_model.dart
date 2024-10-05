import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final int code;
  final UserData userData;
  final String message;
  final String Status;

  LoginResponseModel(this.code, this.userData, this.message, this.Status);

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@JsonSerializable()
class UserData {
  final String token;
  final String username;

  UserData(this.token, this.username);

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
