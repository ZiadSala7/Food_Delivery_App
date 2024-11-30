import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_texts_widget.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';
import 'package:food_delivery_app/features/complete_sign_up/presentation/views/widgets/custom_complete_name_view_text_fields.dart';

class CompleteNameViewBody extends StatelessWidget {
  const CompleteNameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomCommonTextsWidget(
            headerTxt: MyStrings.fillIn,
            descriptionTxt: MyStrings.commonDesc,
          ),
          const CustomCompleteNameViewTextFields(),
          const SizedBox(height: 200),
          CustomButton(onPressed: () {}, txt: MyStrings.next),
        ],
      ),
    );
  }
}
