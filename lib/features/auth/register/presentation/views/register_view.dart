import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_auth_background.dart';
import 'package:food_delivery_app/features/auth/register/presentation/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff5f6fe),
      body: CustomCommonBackground(widget: RegisterViewBody()),
    );
  }
}
