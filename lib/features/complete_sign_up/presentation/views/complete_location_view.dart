import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_button.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_background.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_texts_widget.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/utils/my_strings.dart';

class CompleteLocationView extends StatelessWidget {
  const CompleteLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomCommonBackground(widget: CompleteLocationViewBody()),
    );
  }
}

class CompleteLocationViewBody extends StatelessWidget {
  const CompleteLocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomCommonTextsWidget(
          headerTxt: MyStrings.location,
          descriptionTxt: MyStrings.commonDesc,
        ),
        CustomSetLocationWidget()
      ],
    );
  }
}

class CustomSetLocationWidget extends StatefulWidget {
  const CustomSetLocationWidget({
    super.key,
  });

  @override
  State<CustomSetLocationWidget> createState() =>
      _CustomSetLocationWidgetState();
}

class _CustomSetLocationWidgetState extends State<CustomSetLocationWidget> {
  // ignore: avoid_init_to_null
  var location = null;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Image.asset(
                  Assets.iconsLocation,
                  height: 50,
                ),
                const Text(
                  MyStrings.yourLocation,
                  style: AppTextStyles.text20Med,
                ),
              ],
            ),
          ),
          const SizedBox(height: 35),
          ElevatedButton(
            onPressed: location != null ? () {} : null,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 20),
              backgroundColor: AppColors.common,
            ),
            child: Text(
              MyStrings.setLocation,
              style: AppTextStyles.text20Med.copyWith(
                  color: location != null ? Colors.white : Colors.black),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
