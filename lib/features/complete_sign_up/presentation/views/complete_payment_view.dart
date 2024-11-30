import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_background.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_texts_widget.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';

class CompletePaymentView extends StatelessWidget {
  const CompletePaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomCommonBackground(widget: CompletePaymentViewBody()),
    );
  }
}

class CompletePaymentViewBody extends StatelessWidget {
  const CompletePaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomCommonTextsWidget(
          headerTxt: MyStrings.paymentMethod,
          descriptionTxt: MyStrings.commonDesc,
        ),
      ],
    );
  }
}
