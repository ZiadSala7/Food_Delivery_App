import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/features/auth/forget_password/presentation/views/forget_password_view.dart';
import 'package:food_delivery_app/features/auth/forget_password/presentation/views/confirm_otp_view.dart';
import 'package:food_delivery_app/features/auth/forget_password/presentation/views/reset_password_view.dart';
import 'package:food_delivery_app/features/auth/login/presentation/views/login_view.dart';
import 'package:food_delivery_app/features/auth/register/presentation/views/register_view.dart';
import 'package:food_delivery_app/features/complete_sign_up/presentation/views/complete_image_view.dart';
import 'package:food_delivery_app/features/complete_sign_up/presentation/views/complete_location_view.dart';
import 'package:food_delivery_app/features/complete_sign_up/presentation/views/complete_name_view.dart';
import 'package:food_delivery_app/features/complete_sign_up/presentation/views/complete_payment_view.dart';
import '../../features/onboarding/presentation/views/first_onboarding_view.dart';
import '../../features/onboarding/presentation/views/second_onboarding_view.dart';

Map<String, WidgetBuilder> get appRoutesMap {
  return {
    AppRoutes.firstOnboardingView: (context) => const FirstOnboardingView(),
    AppRoutes.secondOnboardingView: (context) => const SecondOnboardingView(),
    AppRoutes.loginView: (context) => const LoginView(),
    AppRoutes.registerView: (context) => const RegisterView(),
    AppRoutes.forgetPassView: (context) => const ForgetPasswordView(),
    AppRoutes.confirmOtpView: (context) => const ConfirmOtpView(),
    AppRoutes.resetPassView: (context) => const ResetPasswordView(),
    AppRoutes.completeNameView: (context) => const CompleteNameView(),
    AppRoutes.completeIamgeView: (context) => const CompleteImageView(),
    AppRoutes.completeLocationView: (context) => const CompleteLocationView(),
    AppRoutes.completePaymentView: (context) => const CompletePaymentView(),
  };
}
