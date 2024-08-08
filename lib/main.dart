import 'package:flutter/material.dart';
import 'package:to_do/core/app_theme_manager.dart';
import 'package:to_do/core/page_routes_names.dart';
import 'package:to_do/core/routes_generator.dart';
import 'package:to_do/moduls/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do Project',
      theme: AppThemeManager.lightTheme,
      initialRoute: PageRoutesNames.initial,
      onGenerateRoute: RoutesGenerator.onGenerateRoutes,
    );
  }
}
