import 'package:flutter/material.dart';

class CarouselSliderVew extends StatelessWidget {
  const CarouselSliderVew({
    super.key,
    required this.screenHeight,
    required this.screenWidth, required this.onTap, required this.imageUrl,
  });

  final double screenHeight;
  final double screenWidth;
  final VoidCallback onTap;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: screenHeight*0.2,
        width: screenWidth*0.77,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
        child: Image(image: AssetImage(imageUrl,),fit: BoxFit.cover,),
      ),
    );
  }
}