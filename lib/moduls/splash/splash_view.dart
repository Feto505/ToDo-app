import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do/core/page_routes_names.dart';
import 'package:to_do/moduls/login/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2),
            () {
          Navigator.pushReplacementNamed(context, PageRoutesNames.login);
        }
    );
    // super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/splash_background.png", fit: BoxFit.fill,);
  }
}
