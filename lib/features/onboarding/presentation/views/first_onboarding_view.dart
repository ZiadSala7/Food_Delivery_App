import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'widgets/onboarding_view_body.dart';

class FirstOnboardingView extends StatelessWidget {
  const FirstOnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInLeft(
        child: OnboardingViewBody(
          image: Assets.imagesOnbord1,
          title: "Find your Comfort\nFood here",
          description:
              "Here You Can find a chef or dish for every\ntaste and color. Enjoy!",
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.secondOnboardingView);
          },
        ),
      ),
    );
  }
}
