// ignore_for_file: use_build_context_synchronously

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
          onPressed: () async {
            final pref = await SharedPreferences.getInstance();
            pref.setBool("isClicked", true);
            Navigator.pushReplacementNamed(context, AppRoutes.loginView);
          },
        ),
      ),
    );
  }
}
