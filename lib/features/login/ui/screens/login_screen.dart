import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:omar_ahmed_course/core/helpers/extension.dart';
import 'package:omar_ahmed_course/core/helpers/spacing.dart';
import 'package:omar_ahmed_course/core/theming/styles.dart';
import 'package:omar_ahmed_course/core/widgets/app_checked_box.dart';
import 'package:omar_ahmed_course/features/login/logic/cubit/login_cubit.dart';
import 'package:omar_ahmed_course/features/login/ui/widgets/email_password_form.dart';

import '../../../../core/routing/routing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/widgets/app_text_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  bool isObscured = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          LoadingAnimationWidget.staggeredDotsWave(
            color: Colors.white,
            size: 200,
          );
        } else if (state is LoginSuccess) {
          context.pushNamed(Routing.homeScreen);
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyles.font32W700Blue,
                    ),
                    verticalSpace(8),
                    Text(
                      "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                      style: TextStyles.font14GreyRegular,
                    ),
                    verticalSpace(36),
                    const EmailPasswordForm(),
                    Row(
                      children: [
                        CustomCheckbox(
                          borderSide: const BorderSide(
                              color: ColorsManager.grey, width: 16),
                          activeColor: ColorsManager.mainBlue,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                        ),
                        Text(
                          "Remember me",
                          style: TextStyles.font12GreyRegular,
                        ),
                        horizontalSpace(48),
                        CustomTextButton(
                          textColor: ColorsManager.mainBlue,
                          text: "Forgot Password?",
                          textStyle: TextStyles.font12MainBlueRegular,
                          onPressed: () {},
                        )
                      ],
                    ),
                    verticalSpace(40),
                    state is LoginLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : CustomTextButton(
                            text: 'Login',
                            textStyle: TextStyles.font16WhiteSemiBold,
                            onPressed: () {
                              BlocProvider.of<LoginCubit>(context).login(
                                  // تمرير البيانات اللازمة هنا
                                  );
                            },
                            buttonStyle: BottomTextStyle.loginButton,
                          ),
                    verticalSpace(40),
                    Stack(children: [
                      const Divider(
                        height: 20,
                        thickness: 2,
                        color: ColorsManager.lightGrey,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Align(
                        child: Container(
                          alignment: Alignment.center,
                          width: 90.w,
                          decoration: const BoxDecoration(
                            color: ColorsManager.white,
                          ),
                          child: Text(
                            "Or Sign Up",
                            style: TextStyles.font14LightGreyRegular,
                          ),
                        ),
                      )
                    ]),
                    verticalSpace(40),
                    CustomTextButton(
                      text: 'Sign Up',
                      textStyle: TextStyles.font16MainBlueSemiBold,
                      onPressed: () {},
                      buttonStyle: BottomTextStyle.signUpButton,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
