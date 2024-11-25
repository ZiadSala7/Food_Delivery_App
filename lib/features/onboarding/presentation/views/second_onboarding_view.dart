import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class SecondOnboardingView extends StatelessWidget {
  const SecondOnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInLeft(
        child: OnboardingViewBody(
          image: Assets.imagesOnbord2,
          title: "Food Ninja is Where Your\nComfort Food Lives",
          description:
              "Enjoy a fast and smooth food delivery at\nyour doorstep",
          onPressed: () {},
        ),
      ),
    );
  }
}
