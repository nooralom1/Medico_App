import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import 'carousel_slider_vew.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          viewportFraction: 0.8,
          height: screenHeight*0.2,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3)
      ),
      items: [
        CarouselSliderVew(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          imageUrl: "assets/images/home_page_image.png",
          onTap: (){},),
        CarouselSliderVew(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          imageUrl: "assets/images/Home1.jpg",
          onTap: (){},),
        CarouselSliderVew(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          imageUrl: "assets/images/Home2.jpg",
          onTap: (){},),
      ],
    );
  }
}
