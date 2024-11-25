import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class OnboardingViewBody extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final Function() onPressed;
  const OnboardingViewBody({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Image.asset(
          height: 460,
          image,
          width: double.infinity,
        ),
        const SizedBox(height: 15),
        Text(
          title,
          style: AppTextStyles.text30Bold,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Text(
          description,
          style: AppTextStyles.text16Reg,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 40),
        CustomButton(
          onPressed: onPressed,
          txt: 'Next',
        )
      ],
    );
  }
}
