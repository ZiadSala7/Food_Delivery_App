import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';
import 'package:food_delivery_app/features/auth/login/presentation/views/widgets/custom_continue_with_button.dart';

class CustomContinueWithSection extends StatelessWidget {
  const CustomContinueWithSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          MyStrings.continueWith,
          style: AppTextStyles.text16Bold,
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomContinueWithButton(
              text: MyStrings.facebook,
              onPressed: () {},
              icon: Assets.iconsFacebookIcon,
            ),
            CustomContinueWithButton(
              text: MyStrings.google,
              onPressed: () {},
              icon: Assets.iconsGoogleIcon,
            ),
          ],
        ),
      ],
    );
  }
}
