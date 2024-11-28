import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_password_text_field.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';

class CustotmResetPasswordTextFields extends StatelessWidget {
  const CustotmResetPasswordTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomPasswordTextFormField(
          title: MyStrings.newPassword,
          controller: TextEditingController(),
        ),
        const SizedBox(height: 20),
        CustomPasswordTextFormField(
          title: MyStrings.confirmPassword,
          controller: TextEditingController(),
        ),
      ],
    );
  }
}
