import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/common/widgets/custom_common_background.dart';
import 'package:food_delivery_app/features/complete_sign_up/presentation/views/widgets/complete_location_view_body.dart';

class CompleteLocationView extends StatelessWidget {
  const CompleteLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomCommonBackground(widget: CompleteLocationViewBody()),
    );
  }
}
