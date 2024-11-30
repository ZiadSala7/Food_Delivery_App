import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final TextEditingController controller;
  const CustomTextFormField({
    super.key,
    required this.title,
    this.prefixIcon = const SizedBox(),
    this.suffixIcon = const SizedBox(),
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon == const SizedBox() ? null : prefixIcon,
        suffixIcon: suffixIcon == const SizedBox() ? null : suffixIcon,
        hintText: title,
        filled: true,
        fillColor: scaffoldColorAuth,
        hintStyle: AppTextStyles.text16Reg.copyWith(color: AppColors.grey),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.common,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
