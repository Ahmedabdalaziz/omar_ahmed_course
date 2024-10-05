part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class LoginFailure extends LoginState {
  final String errorMessage;
  LoginFailure({required this.errorMessage});
}
final class LoginSuccess extends LoginState {
  final LoginRequestModel data;
  LoginSuccess({required this.data});
}
final class LoginLoading extends LoginState {

}
