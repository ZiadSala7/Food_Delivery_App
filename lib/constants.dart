import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:pinput/pinput.dart';

const String parkinFamily = "Parkinsans";
const Color scaffoldColorAuth = Color.fromARGB(57, 203, 207, 242);
const Color scaffoldColorMain = Color(0xfffcfefc);

final defaultPinTheme = PinTheme(
  width: 70,
  height: 80,
  textStyle: AppTextStyles.text25Bold,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    border: Border.all(
      color: Colors.white,
      width: 10,
    ),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Colors.white, width: 0),
);
