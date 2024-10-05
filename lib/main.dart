import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:omar_ahmed_course/core/routing/app_router.dart';
import 'package:omar_ahmed_course/doc_app.dart';

void main() {
  FlutterNativeSplash.preserve(
      widgetsBinding: WidgetsFlutterBinding.ensureInitialized());
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
  FlutterNativeSplash.remove();
}
