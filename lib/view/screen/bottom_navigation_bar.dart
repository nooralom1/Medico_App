import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:dr_apointment/controller/getx_controller/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavBarController controller = Get.put(BottomNavBarController());
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(controller.bottomBarPages.length,
            (index) => controller.bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar:
          (controller.bottomBarPages.length <= controller.maxCount.value)
              ? AnimatedNotchBottomBar(
                  notchBottomBarController: controller.bottomBarController,
                  color: Colors.white,
                  showLabel: true,
                  textOverflow: TextOverflow.visible,
                  maxLine: 1,
                  shadowElevation: 5,
                  kBottomRadius: 30,
                  notchColor: Colors.blue,
                  removeMargins: false,
                  showShadow: false,
                  itemLabelStyle:
                      const TextStyle(fontSize: 10, color: Colors.black,fontWeight: FontWeight.w600),
                  elevation: 1,
                  bottomBarItems: const [
                    BottomBarItem(
                      inActiveItem: Icon(
                        Icons.dashboard_outlined,
                        color: Colors.black,
                      ),
                      activeItem: Icon(
                        Icons.dashboard_outlined,
                        color: Colors.white,
                      ),
                      itemLabel: 'Category',
                    ),
                    BottomBarItem(
                      inActiveItem: Icon(
                        Icons.saved_search_outlined,
                        color: Colors.black,
                      ),
                      activeItem: Icon(
                        Icons.saved_search_outlined,
                        color: Colors.white,
                      ),
                      itemLabel: 'Search',
                    ),
                    BottomBarItem(
                      inActiveItem: Icon(
                        Icons.house_siding_outlined,
                        color: Colors.black,
                      ),
                      activeItem: Icon(
                        Icons.house_siding_outlined,
                        color: Colors.white,
                      ),
                      itemLabel: 'Home',
                    ),
                  ],
                  onTap: (index) {
                    controller.pageController.jumpToPage(index);
                  },
                  kIconSize: 20,
                )
              : null,
    );
  }
}
