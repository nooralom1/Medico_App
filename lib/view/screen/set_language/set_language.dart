import 'package:dr_apointment/view/common_widget/common_button.dart';
import 'package:dr_apointment/view/screen/location/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetLanguage extends StatelessWidget {
  const SetLanguage({super.key});

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
                children: [
                  SizedBox(
                    height: screenHeight * 0.15,
                  ),
                  Image.asset("assets/images/language_page_image.png"),
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  CommonButton(
                      height: screenHeight * 0.06,
                      width: screenWidth,
                      buttonName: "বাংলা",
                      fWeight: FontWeight.w500,
                      fSize: 16,
                      btnColor: CupertinoColors.white,
                      btnBorderColor: Colors.black,
                      onTap: () {
                        Get.to(const Location());
                      }),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  CommonButton(
                      height: screenHeight * 0.06,
                      width: screenWidth,
                      buttonName: "English",
                      fColor: CupertinoColors.white,
                      fWeight: FontWeight.w500,
                      fSize: 16,
                      onTap: () {
                        Get.to(const Location());
                      }),
                ],
              ),
            )),
      ),
    );
  }
}