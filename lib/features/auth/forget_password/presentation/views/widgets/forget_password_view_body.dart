import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';
import 'package:food_delivery_app/features/auth/forget_password/presentation/views/widgets/custom_arrow_back_button.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        CustomArrowBackButton(onPressed: Navigator.of(context).pop),
        const SizedBox(height: 20),
        const Text(
          MyStrings.forgPass,
          style: AppTextStyles.text30Bold,
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 20),
        const Text(
          MyStrings.forgPassViewDesc,
          style: AppTextStyles.text16Reg,
        ),
        const SizedBox(height: 100),
        CustomTextFormField(
          title: MyStrings.enterEmail,
          controller: TextEditingController(),
          prefixIcon: Image.asset(Assets.iconsEmailIcontf),
        ),
        const SizedBox(height: 300),
        CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.confirmOtpView);
          },
          txt: MyStrings.next,
        ),
      ],
    );
  }
}
