import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/auth//forget_password/presentation/views/widgets/custom_arrow_back_button.dart';

class CustomCommonTextsWidget extends StatelessWidget {
  final String headerTxt;
  final String descriptionTxt;
  const CustomCommonTextsWidget({
    super.key,
    required this.headerTxt,
    required this.descriptionTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        CustomArrowBackButton(onPressed: Navigator.of(context).pop),
        const SizedBox(height: 20),
        Text(
          headerTxt,
          style: AppTextStyles.text30Bold,
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 20),
        Text(
          descriptionTxt,
          style: AppTextStyles.text16Reg,
        ),
      ],
    );
  }
}
