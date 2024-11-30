import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_background.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_texts_widget.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomCommonTextsWidget(
          headerTxt: MyStrings.paymentMethod,
          descriptionTxt: MyStrings.commonDesc,
        ),
        const SizedBox(height: 20),
        CustomPaymentMethodButton(
          image: Assets.iconsPaypalIcon,
          onTap: () {},
        ),
        const SizedBox(height: 20),
        CustomPaymentMethodButton(
          image: Assets.iconsVisaIcon,
          onTap: () {},
        ),
        const SizedBox(height: 20),
        CustomPaymentMethodButton(
          image: Assets.iconsPayoneerIcon,
          onTap: () {},
        ),
        const SizedBox(height: 147),
        CustomButton(onPressed: () {}, txt: MyStrings.next),
      ],
    );
  }
}

class CustomPaymentMethodButton extends StatelessWidget {
  final String image;
  final Function() onTap;
  const CustomPaymentMethodButton({
    super.key,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              image,
              height: 50,
            ),
          ),
        ),
      ),
    );
  }
}
