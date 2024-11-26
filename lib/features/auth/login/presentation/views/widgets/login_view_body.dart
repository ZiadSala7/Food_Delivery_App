import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/auth/login/presentation/views/widgets/custom_auth_text_button.dart';
import 'package:food_delivery_app/features/auth/login/presentation/views/widgets/custom_continue_with_section.dart';
import 'package:food_delivery_app/features/auth/login/presentation/views/widgets/custom_login_text_form_fields.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Image.asset(Assets.imagesLogo),
        const SizedBox(height: 55),
        const Text(
          "Login To Your Account",
          style: AppTextStyles.text25Bold,
        ),
        const SizedBox(height: 50),
        const CustomLoginTextFormFields(),
        const SizedBox(height: 25),
        const CustomContinueWithSection(),
        const SizedBox(height: 30),
        CustomAuthTextButton(
          txt: "Forget Your Password?",
          onTap: () {},
        ),
        const SizedBox(height: 40),
        CustomButton(onPressed: () {}, txt: "Login"),
      ],
    );
  }
}
