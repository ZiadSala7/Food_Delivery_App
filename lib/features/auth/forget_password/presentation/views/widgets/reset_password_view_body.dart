import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/views/congratulation_view.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_texts_widget.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';
import 'package:food_delivery_app/features/auth/forget_password/presentation/views/widgets/custom_reset_password_text_fields.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomCommonTextsWidget(
            headerTxt: MyStrings.resetPassHere,
            descriptionTxt: MyStrings.resetPassDesc,
          ),
          const SizedBox(height: 40),
          const CustotmResetPasswordTextFields(),
          const SizedBox(height: 270),
          Center(
            child: CustomButton(
              onPressed: () {
                Navigator.pushReplacement(
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
