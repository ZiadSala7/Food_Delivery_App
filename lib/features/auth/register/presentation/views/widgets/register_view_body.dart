import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_password_text_field.dart';
import 'package:food_delivery_app/core/common/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/auth/login/presentation/views/widgets/custom_auth_text_button.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Image.asset(Assets.imagesLogo),
        const SizedBox(height: 55),
        const Text(
          "Sign Up For Free",
          style: AppTextStyles.text25Bold,
        ),
        const SizedBox(height: 50),
        CustomTextFormField(
          prefixIcon: Image.asset(
            Assets.iconsProfileIcon,
          ),
          title: "Name",
          controller: TextEditingController(),
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          title: "Email",
          prefixIcon: Image.asset(
            Assets.iconsEmailIcontf,
          ),
          controller: TextEditingController(),
        ),
        const SizedBox(height: 15),
        CustomPasswordTextFormField(
          title: "Password",
          prefixIcon: Image.asset(
            Assets.iconsPassIcon,
          ),
          controller: TextEditingController(),
        ),
        const SizedBox(height: 100),
        CustomButton(onPressed: () {}, txt: "Create Account"),
        const SizedBox(height: 30),
        CustomAuthTextButton(
          txt: "Already Have an Account?",
          onTap: () {
            Navigator.pushReplacementNamed(context, AppRoutes.loginView);
          },
        ),
      ],
    );
  }
}
