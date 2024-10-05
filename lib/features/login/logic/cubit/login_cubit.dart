import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:omar_ahmed_course/features/login/data/models/login_request_model.dart';
import 'package:omar_ahmed_course/features/login/data/repo/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isObscured = true;

  LoginCubit(this.loginRepo) : super(LoginInitial());

  Future<void> login() async {
    final loginRequest = LoginRequestModel(
      email: emailController.text,
      password: passwordController.text,
    );
    emit(LoginLoading());
    try {
      await loginRepo.login(loginRequest);
      emit(LoginSuccess(data: loginRequest));
    } on Exception catch (e) {
      emit(LoginFailure(errorMessage: e.toString()));
    }
  }

  void togglePasswordVisibility() {
    isObscured = !isObscured;
    emit(LoginInitial());
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
