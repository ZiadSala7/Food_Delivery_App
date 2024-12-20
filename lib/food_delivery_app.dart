import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/core/utils/app_routes_map.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/features/splash/presentation/views/splash_view.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.splashView,
      routes: appRoutesMap,
      theme: ThemeData(scaffoldBackgroundColor: scaffoldColorMain),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
