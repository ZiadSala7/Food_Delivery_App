import 'package:flutter/material.dart';

class CustomCompleteMethodButton extends StatelessWidget {
  final String image;
  final double height;
  final Function() onTap;
  const CustomCompleteMethodButton({
    super.key,
    required this.image,
    required this.onTap,
    this.height = 50,
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
              height: height,
            ),
          ),
        ),
      ),
    );
  }
}
