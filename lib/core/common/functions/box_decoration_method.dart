import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';

BoxDecoration boxDecorationMethod() {
  return const BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.fitWidth,
      image: AssetImage(Assets.imagesBackground),
    ),
  );
}
