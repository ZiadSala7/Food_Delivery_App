import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/functions/box_decoration_method.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_password_text_field.dart';
import 'package:food_delivery_app/core/common/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/auth/login/presentation/views/widgets/custom_auth_text_button.dart';
import 'package:food_delivery_app/features/auth/login/presentation/views/widgets/custom_continue_with_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f6fe),
      body: FadeInDown(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: boxDecorationMethod(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Image.asset(
                  Assets.imagesLogo,
                ),
                const SizedBox(height: 55),
                const Text(
                  "Login To Your Account",
                  style: AppTextStyles.text25Bold,
                ),
                const SizedBox(height: 50),
                CustomTextFormField(
                  title: "Email",
                  controller: TextEditingController(),
                ),
                const SizedBox(height: 12),
                CustomPasswordTextFormField(
                  title: "Password",
                  controller: TextEditingController(),
                ),
                const SizedBox(height: 25),
                const Text(
                  "Or Continue With",
                  style: AppTextStyles.text16Bold,
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContinueWithButton(
                      text: "Facebook",
                      onPressed: () {},
                      icon: Assets.iconsFacebookIcon,
                    ),
                    CustomContinueWithButton(
                      text: "Google",
                      onPressed: () {},
                      icon: Assets.iconsGoogleIcon,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                CustomAuthTextButton(
                  txt: "Forget Your Password?",
                  onTap: () {},
                ),
                const SizedBox(height: 40),
                CustomButton(onPressed: () {}, txt: "Next"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
