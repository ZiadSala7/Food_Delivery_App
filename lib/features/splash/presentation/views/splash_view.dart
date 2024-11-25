// ignore_for_file: use_build_context_synchronously
import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () async {
      final pref = await SharedPreferences.getInstance();
      pref.getBool("isClicked") ?? false
          ? Navigator.pushReplacementNamed(context, AppRoutes.loginView)
          : Navigator.pushReplacementNamed(
              context, AppRoutes.firstOnboardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInDown(
        child: const SplashViewBody(),
      ),
    );
  }
}
