import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/functions/box_decoration_method.dart';

class CustomCommonAuthBackground extends StatelessWidget {
  final Widget widget;
  const CustomCommonAuthBackground({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: boxDecorationMethod(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: widget,
        ),
      ),
    );
  }
}
