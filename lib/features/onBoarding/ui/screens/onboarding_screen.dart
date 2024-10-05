import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_course/core/theming/styles.dart';
import 'package:omar_ahmed_course/features/onBoarding/ui/widgets/doc_logo.dart';
import 'package:omar_ahmed_course/features/onBoarding/ui/widgets/doctor_image_text.dart';
import 'package:omar_ahmed_course/features/onBoarding/ui/widgets/onboarding_button.dart';

import '../../../../core/helpers/spacing.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
              child: Column(
                children: [
                  const DocLogoAndName(),
                  verticalSpace(40),
                  const DoctorImageText(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      style: TextStyles.font14GreyRegular,
                    ),
                  ),
                  verticalSpace(20),
                  const OnboardingButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
