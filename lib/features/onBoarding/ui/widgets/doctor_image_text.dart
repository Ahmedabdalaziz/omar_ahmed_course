import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:omar_ahmed_course/core/theming/color.dart';
import 'package:omar_ahmed_course/core/theming/styles.dart';

class DoctorImageText extends StatelessWidget {
  const DoctorImageText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/svgs/logo_doc.svg',
          width: 400.w,
          height: 400.h,
          colorFilter: ColorFilter.mode(
            ColorsManager.mainBlue.withOpacity(0.1),
            BlendMode.srcIn,
          ),
        ),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    stops: [0.10.h, 0.4.h],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.white, Colors.white.withOpacity(0.0)])),
            child: Image.asset(
              'assets/images/onboarding_doctor_logo.png',
            )),
        Positioned(
            bottom: 20.h,
            right: 0,
            left: 0,
            child: SizedBox(
                width: 160.w,
                child: Column(
                  children: [
                    Text(
                        ' Best Doctor '
                        'Appointment App',
                        textAlign: TextAlign.center,
                        style: TextStyles.font32W700Blue.copyWith(height: 1.4)),
                  ],
                ))),
      ],
    );
  }
}
