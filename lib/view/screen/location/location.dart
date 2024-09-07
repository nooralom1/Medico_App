import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/common_widget/common_button.dart';
import 'package:dr_apointment/view/screen/bottom_navigation_bar.dart';
import 'package:dr_apointment/view/screen/home/home.dart';
import 'package:dr_apointment/view/screen/location/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Colors.blue.shade100,
                Colors.white,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: const Color(0xffF1F1F1),
                  child: SizedBox(
                    height: screenHeight * 0.64,
                    width: screenWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Color(0xff296197),
                          ),
                          SizedBox(height: screenHeight*0.02,),
                          const CommonText(
                            text:
                                "Allow Maps to access this\ndevice’s precise location?",
                            fSize: 18,
                            fWeight: FontWeight.w500,
                            maxLines: 2,
                          ),
                          SizedBox(height: screenHeight*0.02,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  CustomContainer(
                                    screenWidth: screenWidth,
                                    image: 'assets/images/Precise Img.png',
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  const CommonText(text: "Precise"),
                                ],
                              ),
                              Column(
                                children: [
                                  CustomContainer(
                                    screenWidth: screenWidth,
                                    image: 'assets/images/Approx Img.png',
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  const CommonText(text: "Approximate"),

                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight*0.03,),
                          CommonButton(
                              height: screenHeight*0.06,
                              width: screenWidth,
                              btnColor: const Color(0xffD2E4FC),
                              btnBorderColor: const Color(0xffD2E4FC),
                              buttonName: "While using the app",
                              fSize: 12,
                              fWeight: FontWeight.w500,
                              onTap: (){
                                Get.to(const BottomNavBar());
                              }),
                          SizedBox(height: screenHeight*0.01,),
                          CommonButton(
                              height: screenHeight*0.06,
                              width: screenWidth,
                              btnColor: const Color(0xffD2E4FC),
                              btnBorderColor: const Color(0xffD2E4FC),
                              buttonName: "Only this time",
                              fSize: 12,
                              fWeight: FontWeight.w500,
                              onTap: (){
                                Get.to(const BottomNavBar());
                              }),
                          SizedBox(height: screenHeight*0.01,),
                          CommonButton(
                              height: screenHeight*0.06,
                              width: screenWidth,
                              btnColor: const Color(0xffD2E4FC),
                              btnBorderColor: const Color(0xffD2E4FC),
                              buttonName: "Don’t allow",
                              fSize: 12,
                              fWeight: FontWeight.w500,
                              onTap: (){
                                Get.to(const BottomNavBar());
                              }),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
