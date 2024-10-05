import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omar_ahmed_course/core/helpers/regex.dart';
import 'package:omar_ahmed_course/core/helpers/spacing.dart';
import 'package:omar_ahmed_course/core/widgets/custom_text_field.dart';
import 'package:omar_ahmed_course/features/login/logic/cubit/login_cubit.dart';
import '../../../../core/theming/color.dart';
import '../../data/models/login_request_model.dart';

class EmailPasswordForm extends StatefulWidget {
  const EmailPasswordForm({super.key});

  @override
  State<EmailPasswordForm> createState() => _EmailPasswordFormState();
}

class _EmailPasswordFormState extends State<EmailPasswordForm> {
  bool isObscured = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextField(
            validator: _emailValidator,
            controller: context.read<LoginCubit>().emailController,
            icon: Icons.email_outlined,
            textColor: ColorsManager.grey,
            labelText: "Email",
            borderCircular: 16,
          ),
          verticalSpace(16),
          CustomTextField(
            validator: _passwordValidator,
            controller: context.read<LoginCubit>().passwordController,
            icon: Icons.lock_outline,
            obscureText: isObscured,
            textColor: ColorsManager.grey,
            labelText: "Password",
            borderCircular: 16,
            suffixIcon: IconButton(
              icon: isObscured
                  ? const Icon(Icons.visibility_off_outlined)
                  : const Icon(Icons.visibility_outlined),
              onPressed: () {
                setState(() {
                  isObscured = !isObscured;
                });
              },
            ),
          ),
          verticalSpace(16),
          ElevatedButton(
            onPressed: () {
              validateThenLogin();
            },
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }

  String? _emailValidator(String? email) {
    if (email == null || email.isEmpty || !isValid(email)) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  String? _passwordValidator(String? password) {
    if (password == null || password.isEmpty || password.length < 8) {
      return 'Password must be at least 8 characters long.';
    }
    if (!hasUppercase(password) || !hasLowercase(password)) {
      return 'Password must contain at least one uppercase letter and one lowercase letter.';
    }
    if (!hasNumber(password)) {
      return 'Password must contain at least one number.';
    }
    if (!hasSpecialChar(password)) {
      return 'Password must contain at least one special character.';
    }
    return null;
  }

  void validateThenLogin() {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      LoginRequestModel loginRequestModel = LoginRequestModel(
        email: context.read<LoginCubit>().emailController.text,
        password: context.read<LoginCubit>().passwordController.text,
      );

      context.read<LoginCubit>().login();
    }
  }
}
