import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_auth_background.dart';
import 'package:food_delivery_app/features/auth/forget_password/presentation/views/widgets/confirm_otp_view_body.dart';

class ConfirmOtpView extends StatelessWidget {
  const ConfirmOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomCommonBackground(widget: ConfirmOtpViewBody()),
    );
  }
}
