import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_texts_widget.dart';
import 'package:food_delivery_app/core/utils/app_routes.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';
import 'package:pinput/pinput.dart';

class ConfirmOtpViewBody extends StatelessWidget {
  const ConfirmOtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomCommonTextsWidget(
            headerTxt: MyStrings.codeDigits,
            descriptionTxt: MyStrings.codeDesc,
          ),
          const SizedBox(height: 70),
          Container(
            color: const Color.fromARGB(182, 245, 245, 245),
            width: double.infinity,
            child: Pinput(
              onCompleted: (value) {},
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
            ),
          ),
          const SizedBox(height: 270),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.resetPassView);
            },
            txt: MyStrings.next,
          ),
        ],
      ),
    );
  }
}
