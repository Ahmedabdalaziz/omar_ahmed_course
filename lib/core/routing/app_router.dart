import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omar_ahmed_course/core/id/dependancy_injection.dart';
import 'package:omar_ahmed_course/core/routing/routing.dart';
import 'package:omar_ahmed_course/features/home/ui/screen/home_screen.dart';
import 'package:omar_ahmed_course/features/login/logic/cubit/login_cubit.dart';
import 'package:omar_ahmed_course/features/login/ui/screens/login_screen.dart';
import 'package:omar_ahmed_course/features/onBoarding/ui/screens/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routing.onBoarding:
        return MaterialPageRoute(
            builder: (context) => const onBoardingScreen());

      case Routing.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => getIt.call<LoginCubit>(),
              child: const LoginScreen(),
            ));

      case Routing.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      default:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
    }
  }
}
