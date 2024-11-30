import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_texts_widget.dart';
import 'package:food_delivery_app/core/common/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_auth_background.dart';

class CompleteNameView extends StatelessWidget {
  const CompleteNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: scaffoldColorAuth,
      body: CustomCommonBackground(widget: CompleteNameViewBody()),
    );
  }
}

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
          const SizedBox(height: 200),
          CustomButton(onPressed: () {}, txt: MyStrings.next),
        ],
      ),
    );
  }
}
