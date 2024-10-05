import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_course/core/theming/color.dart';
import 'package:omar_ahmed_course/core/theming/font_wieghts.dart';

class TextStyles {
  static TextStyle font24BoldBlack = TextStyle(
      fontSize: 24.sp,
      color: ColorsManager.black,
      fontWeight: FontWeightHelper.bold);

  static TextStyle font32W700Blue = TextStyle(
      fontSize: 32.sp,
      color: ColorsManager.mainBlue,
      fontWeight: FontWeightHelper.bold);

  static TextStyle font14GreyRegular = TextStyle(
      fontSize: 14.sp,
      color: ColorsManager.grey,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font14LightGreyRegular = TextStyle(
      fontSize: 14.sp,
      color: ColorsManager.lightGrey,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font12GreyRegular = TextStyle(
      fontSize: 12.sp,
      color: ColorsManager.grey,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font12MainBlueRegular = TextStyle(
      fontSize: 12.sp,
      color: ColorsManager.mainBlue,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font16WhiteSemiBold = TextStyle(
      fontSize: 16.sp,
      color: ColorsManager.white,
      fontWeight: FontWeightHelper.semiBold);

  static TextStyle font16MainBlueSemiBold = TextStyle(
      fontSize: 16.sp,
      color: ColorsManager.mainBlue,
      fontWeight: FontWeightHelper.semiBold);
}

class BottomTextStyle {
  static ButtonStyle getStartButton = ButtonStyle(
      backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
      minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0.sp),
        ),
      ));
  static ButtonStyle loginButton = ButtonStyle(
    backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
    minimumSize: WidgetStateProperty.all(const Size(double.infinity, 60)),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0.sp),
      ),
    ),
  );
  static ButtonStyle signUpButton = ButtonStyle(
    side: WidgetStateProperty.all(
        const BorderSide(color: Colors.grey, width: 2)),
    backgroundColor: WidgetStateProperty.all(ColorsManager.white),
    minimumSize: WidgetStateProperty.all(const Size(double.infinity, 60)),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0.sp),
      ),
    ),
  );
}
