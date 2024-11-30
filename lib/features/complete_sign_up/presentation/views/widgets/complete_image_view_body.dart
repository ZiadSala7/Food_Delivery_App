import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_texts_widget.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';
import 'package:food_delivery_app/features/complete_sign_up/presentation/views/widgets/custom_complete_method_button.dart';

class CompleteImageViewBody extends StatelessWidget {
  const CompleteImageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomCommonTextsWidget(
          headerTxt: MyStrings.uploadPhoto,
          descriptionTxt: MyStrings.commonDesc,
        ),
        const SizedBox(height: 20),
        CustomCompleteMethodButton(
          image: Assets.iconsGalleryIcon,
          onTap: () {},
          height: 100,
        ),
        const SizedBox(height: 10),
        CustomCompleteMethodButton(
          image: Assets.iconsCameraIcon,
          onTap: () {},
          height: 115,
        ),
        const SizedBox(height: 117),
        CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.completeLocationView);
          },
          txt: MyStrings.next,
        ),
      ],
    );
  }
}
