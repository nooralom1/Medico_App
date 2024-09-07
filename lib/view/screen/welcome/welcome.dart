import 'package:dr_apointment/view/common_widget/common_button.dart';
import 'package:dr_apointment/view/screen/language/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
                  height: screenHeight * 0.25,
                ),
                Image.asset("assets/images/welcome_page_image.png"),
                SizedBox(
                  height: screenHeight * 0.15,
                ),
                CommonButton(
                  height: screenHeight * 0.06,
                  width: screenWidth,
                  buttonName: 'GET START',
                  fColor: Color(0xffFAFAFA),
                  fSize: 16,
                  fWeight: FontWeight.w500,
                  onTap: () {
                    Get.to(Language());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
