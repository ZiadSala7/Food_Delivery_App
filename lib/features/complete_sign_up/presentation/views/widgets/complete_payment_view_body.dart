import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_texts_widget.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';
import 'package:food_delivery_app/features/complete_sign_up/presentation/views/widgets/custom_complete_method_button.dart';

class CompletePaymentViewBody extends StatelessWidget {
  const CompletePaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomCommonTextsWidget(
          headerTxt: MyStrings.paymentMethod,
          descriptionTxt: MyStrings.commonDesc,
        ),
        const SizedBox(height: 20),
        CustomCompleteMethodButton(
          image: Assets.iconsPaypalIcon,
          onTap: () {},
        ),
        const SizedBox(height: 20),
        CustomCompleteMethodButton(
          image: Assets.iconsVisaIcon,
          onTap: () {},
        ),
        const SizedBox(height: 20),
        CustomCompleteMethodButton(
          image: Assets.iconsPayoneerIcon,
          onTap: () {},
        ),
        const SizedBox(height: 147),
        CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.completeIamgeView);
          },
          txt: MyStrings.next,
        ),
      ],
    );
  }
}
