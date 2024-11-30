import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_auth_background.dart';
import 'package:food_delivery_app/features/auth/forget_password/presentation/views/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomCommonBackground(
        widget: ForgetPasswordViewBody(),
      ),
    );
  }
}
