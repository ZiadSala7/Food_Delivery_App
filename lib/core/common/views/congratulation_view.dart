import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/features/auth/common/custom_common_auth_background.dart';

class CongratulationView extends StatelessWidget {
  final String image;
  final String buttonTxt;
  final Function() onPressed;
  const CongratulationView({
    super.key,
    required this.image,
    required this.buttonTxt,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomCommonBackground(
        widget: Column(
          children: [
            const SizedBox(height: 200),
            Image.asset(
              Assets.imagesCongrats,
            ),
            const SizedBox(height: 30),
            Image.asset(
              image,
            ),
            const SizedBox(height: 260),
            CustomButton(
              onPressed: onPressed,
              txt: buttonTxt,
            ),
          ],
        ),
      ),
    );
  }
}
