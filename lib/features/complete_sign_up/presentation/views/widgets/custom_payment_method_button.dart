import 'package:flutter/material.dart';

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
