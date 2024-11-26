import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  final String title;
  final Widget prefixIcon;
  final TextEditingController controller;
  const CustomPasswordTextFormField({
    super.key,
    required this.title,
    this.prefixIcon = const SizedBox(),
    required this.controller,
  });

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool isClicked = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: isClicked,
      decoration: InputDecoration(
        prefixIcon:
            widget.prefixIcon == const SizedBox() ? null : widget.prefixIcon,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
          icon: isClicked
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility, color: AppColors.common),
        ),
        hintText: widget.title,
        hintStyle: AppTextStyles.text16Reg.copyWith(color: AppColors.grey),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.common,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.grey,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
