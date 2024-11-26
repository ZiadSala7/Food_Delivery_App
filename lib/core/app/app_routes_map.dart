import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/features/auth/forget_password/presentation/views/forget_password_view.dart';
import 'package:food_delivery_app/features/auth/login/presentation/views/login_view.dart';
import 'package:food_delivery_app/features/auth/register/presentation/views/register_view.dart';
import '../../features/onboarding/presentation/views/first_onboarding_view.dart';
import '../../features/onboarding/presentation/views/second_onboarding_view.dart';

Map<String, WidgetBuilder> get appRoutesMap {
  return {
    AppRoutes.firstOnboardingView: (context) => const FirstOnboardingView(),
    AppRoutes.secondOnboardingView: (context) => const SecondOnboardingView(),
    AppRoutes.loginView: (context) => const LoginView(),
    AppRoutes.registerView: (context) => const RegisterView(),
    AppRoutes.forgetPassView: (context) => const ForgetPasswordView(),
  };
}
