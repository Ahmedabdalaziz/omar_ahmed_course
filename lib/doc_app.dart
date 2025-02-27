import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_course/core/routing/app_router.dart';
import 'package:omar_ahmed_course/core/routing/routing.dart';
import 'package:omar_ahmed_course/core/theming/color.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;

  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 690),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: Routing.onBoarding,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
