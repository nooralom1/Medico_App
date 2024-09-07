import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:flutter/material.dart';

class CategoryViewCard extends StatelessWidget {
  const CategoryViewCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.imageUrl,
    required this.tittle,
    required this.onTap,
  });

  final double screenHeight;
  final double screenWidth;
  final String imageUrl;
  final String tittle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.15,
      width: screenWidth * 0.1,
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Center(child: Image.network(imageUrl)),
          ),
          CommonText(
            text: tittle,
            fSize: 11,
            fWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}
