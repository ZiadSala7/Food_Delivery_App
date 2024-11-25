import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/splash/presentation/views/splash_view.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xfffcfefc)),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
