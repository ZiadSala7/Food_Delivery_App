import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesBackground),
        ),
      ),
      child: Center(
        child: Image.asset(Assets.imagesLogo),
      ),
    );
  }
}
