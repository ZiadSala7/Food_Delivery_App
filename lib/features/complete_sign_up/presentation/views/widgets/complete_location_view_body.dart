import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_texts_widget.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';
import 'package:food_delivery_app/features/complete_sign_up/presentation/views/widgets/custom_set_location_widget.dart';

class CompleteLocationViewBody extends StatelessWidget {
  const CompleteLocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomCommonTextsWidget(
          headerTxt: MyStrings.location,
          descriptionTxt: MyStrings.commonDesc,
        ),
        const CustomSetLocationWidget(),
        const Spacer(),
        CustomButton(onPressed: () {}, txt: MyStrings.next),
        const SizedBox(height: 60),
      ],
    );
  }
}
