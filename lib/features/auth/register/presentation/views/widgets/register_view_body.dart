import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';
import 'package:food_delivery_app/features/auth/login/presentation/views/widgets/custom_auth_text_button.dart';
import 'package:food_delivery_app/features/auth/register/presentation/views/widgets/custom_register_text_form_fields.dart';

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
          MyStrings.signUp,
          style: AppTextStyles.text25Bold,
        ),
        const SizedBox(height: 50),
        const CustomRegisterTextFormFields(),
        const SizedBox(height: 100),
        CustomButton(onPressed: () {}, txt: MyStrings.createAccount),
        const SizedBox(height: 30),
        CustomAuthTextButton(
          txt: MyStrings.alreadyHaveAcc,
          onTap: () {
            Navigator.pushReplacementNamed(context, AppRoutes.loginView);
          },
        ),
      ],
    );
  }
}
