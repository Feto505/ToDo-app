import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/core/page_routes_names.dart';
import 'package:to_do/moduls/login/login_view.dart';
import 'package:to_do/moduls/splash/splash_view.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutesNames.initial:
        return MaterialPageRoute(
            builder: (context) => const SplashView(),
            settings: settings);

      case PageRoutesNames.login:
        return MaterialPageRoute(
            builder: (context) => const LoginView(),
            settings: settings);
      default:
        return MaterialPageRoute(
            builder: (context) => const SplashView(),
            settings: settings);
    }
  }
}
