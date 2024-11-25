import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/splash/presentation/views/splash_view.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashView(),
    );
  }
}
