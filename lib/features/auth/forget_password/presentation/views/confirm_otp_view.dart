import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';
import 'package:food_delivery_app/features/auth/common/custom_common_auth_background.dart';
import 'package:food_delivery_app/features/auth/forget_password/presentation/views/widgets/custom_arrow_back_button.dart';
import 'package:pinput/pinput.dart';

class ConfirmOtpView extends StatelessWidget {
  const ConfirmOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomCommonBackground(widget: ConfirmOtpViewBody()),
    );
  }
}

class ConfirmOtpViewBody extends StatelessWidget {
  const ConfirmOtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        CustomArrowBackButton(onPressed: Navigator.of(context).pop),
        const SizedBox(height: 20),
        const Text(
          MyStrings.codeDigits,
          style: AppTextStyles.text30Bold,
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 20),
        const Text(
          MyStrings.codeDesc,
          style: AppTextStyles.text16Reg,
        ),
        const SizedBox(height: 70),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(182, 245, 245, 245),
          ),
          width: double.infinity,
          child: Pinput(
            onCompleted: (value) {},
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: focusedPinTheme,
          ),
        ),
        const SizedBox(height: 270),
        CustomButton(
          onPressed: () {},
          txt: MyStrings.next,
        ),
      ],
    );
  }
}
