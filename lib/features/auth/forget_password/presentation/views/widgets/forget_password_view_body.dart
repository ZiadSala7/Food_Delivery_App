import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_texts_widget.dart';
import 'package:food_delivery_app/core/common/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomCommonTextsWidget(
            headerTxt: MyStrings.forgPass,
            descriptionTxt: MyStrings.forgPassViewDesc,
          ),
          const SizedBox(height: 100),
          CustomTextFormField(
            title: MyStrings.enterEmail,
            controller: TextEditingController(),
            prefixIcon: Image.asset(Assets.iconsEmailIcontf),
          ),
          const SizedBox(height: 340),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.confirmOtpView);
            },
            txt: MyStrings.next,
          ),
        ],
      ),
    );
  }
}
