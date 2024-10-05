import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_course/core/helpers/extension.dart';
import 'package:omar_ahmed_course/core/routing/routing.dart';
import 'package:omar_ahmed_course/core/theming/styles.dart';
import 'package:omar_ahmed_course/core/widgets/app_text_button.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300.w,
        height: 43.h,
        child: CustomTextButton(
            text: 'Get Started',
            textStyle: TextStyles.font16WhiteSemiBold,
            onPressed: () {
              context.pushNamed(Routing.loginScreen);
            },
            buttonStyle: BottomTextStyle.getStartButton
        )
    );
  }
}
