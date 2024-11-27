import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_password_text_field.dart';
import 'package:food_delivery_app/core/common/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';

class CustomLoginTextFormFields extends StatelessWidget {
  const CustomLoginTextFormFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          title: MyStrings.email,
          controller: TextEditingController(),
        ),
        const SizedBox(height: 12),
        CustomPasswordTextFormField(
          title: MyStrings.password,
          controller: TextEditingController(),
        ),
      ],
    );
  }
}
