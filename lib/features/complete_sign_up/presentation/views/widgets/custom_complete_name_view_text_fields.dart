import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';

class CustomCompleteNameViewTextFields extends StatelessWidget {
  const CustomCompleteNameViewTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        CustomTextFormField(
          title: MyStrings.firstName,
          controller: TextEditingController(),
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          title: MyStrings.lastName,
          controller: TextEditingController(),
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          title: MyStrings.mobileNum,
          controller: TextEditingController(),
        ),
      ],
    );
  }
}
