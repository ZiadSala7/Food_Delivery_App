import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/views/congratulation_view.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_password_text_field.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';
import 'package:food_delivery_app/features/auth/forget_password/presentation/views/widgets/custom_arrow_back_button.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          CustomArrowBackButton(onPressed: Navigator.of(context).pop),
          const SizedBox(height: 20),
          const Text(
            MyStrings.resetPassHere,
            style: AppTextStyles.text30Bold,
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 20),
          const Text(
            MyStrings.resetPassDesc,
            style: AppTextStyles.text16Reg,
          ),
          const SizedBox(height: 40),
          CustomPasswordTextFormField(
            title: MyStrings.newPassword,
            controller: TextEditingController(),
          ),
          const SizedBox(height: 20),
          CustomPasswordTextFormField(
            title: MyStrings.confirmPassword,
            controller: TextEditingController(),
          ),
          const SizedBox(height: 270),
          Center(
            child: CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CongratulationView(
                      image: Assets.imagesPassCong,
                      buttonTxt: MyStrings.backTxt,
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, AppRoutes.loginView);
                      },
                    ),
                  ),
                );
              },
              txt: MyStrings.next,
            ),
          ),
        ],
      ),
    );
  }
}
