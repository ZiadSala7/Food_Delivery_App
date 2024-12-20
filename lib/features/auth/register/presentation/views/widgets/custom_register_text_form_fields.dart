import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_password_text_field.dart';
import 'package:food_delivery_app/core/common/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';

class CustomRegisterTextFormFields extends StatelessWidget {
  const CustomRegisterTextFormFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          title: MyStrings.name,
          prefixIcon: Image.asset(
            Assets.iconsProfileIcon,
          ),
          controller: TextEditingController(),
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          title: MyStrings.email,
          prefixIcon: Image.asset(
            Assets.iconsEmailIcontf,
          ),
          controller: TextEditingController(),
        ),
        const SizedBox(height: 15),
        CustomPasswordTextFormField(
          title: MyStrings.password,
          prefixIcon: Image.asset(
            Assets.iconsPassIcon,
          ),
          controller: TextEditingController(),
        ),
      ],
    );
  }
}
