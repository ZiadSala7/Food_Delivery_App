import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/features/auth/login/presentation/views/login_view.dart';
import '../../features/onboarding/presentation/views/first_onboarding_view.dart';
import '../../features/onboarding/presentation/views/second_onboarding_view.dart';

Map<String, WidgetBuilder> get appRoutesMap {
  return {
    AppRoutes.firstOnboardingView: (context) => const FirstOnboardingView(),
    AppRoutes.secondOnboardingView: (context) => const SecondOnboardingView(),
    AppRoutes.loginView: (context) => const LoginView(),
  };
}
