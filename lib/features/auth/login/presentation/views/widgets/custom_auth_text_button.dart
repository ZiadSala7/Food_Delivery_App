import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class CustomAuthTextButton extends StatelessWidget {
  final String txt;
  final Function() onTap;
  const CustomAuthTextButton({
    super.key,
    required this.txt,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        txt,
        style: AppTextStyles.text18Med.copyWith(
          color: AppColors.common,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.common,
        ),
      ),
    );
  }
}
