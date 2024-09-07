import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:dr_apointment/view/screen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  final pageController = PageController(initialPage: 2);
  final NotchBottomBarController bottomBarController =
      NotchBottomBarController(index: 2);
  RxInt index = 0.obs;
  RxInt maxCount = 3.obs;
  RxInt page = 0.obs;

  List<Widget> bottomBarPages = [
    const Icon(
      Icons.category,
      size: 50,
    ),
    const Icon(
      Icons.search,
      size: 50,
    ),
    const Home()
  ];
}
