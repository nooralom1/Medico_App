import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.screenWidth, required this.image,
  });

  final double screenWidth;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidth*0.35,
      width: screenWidth*0.35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
      ),
      child: Image.asset(image),
    );
  }
}
