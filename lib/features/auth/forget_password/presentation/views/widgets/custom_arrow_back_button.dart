import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';

class CustomArrowBackButton extends StatelessWidget {
  final Function() onPressed;
  const CustomArrowBackButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: onPressed,
        child: Image.asset(Assets.iconsIconBack),
      ),
    );
  }
}
