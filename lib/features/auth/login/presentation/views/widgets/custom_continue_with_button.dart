import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class CustomContinueWithButton extends StatelessWidget {
  final String text;
  final String icon;
  final Function() onPressed;
  const CustomContinueWithButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton.icon(
        onPressed: onPressed,
        label: Text(
          text,
          style: AppTextStyles.text16Reg.copyWith(color: Colors.black),
        ),
        icon: Image.asset(icon),
      ),
    );
  }
}
