import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/common_widget/common_button.dart';
import 'package:dr_apointment/view/screen/bottom_navigation_bar.dart';
import 'package:dr_apointment/view/screen/support/widget/bottom_container.dart';
import 'package:dr_apointment/view/screen/support/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Support extends StatelessWidget {
  const Support({super.key});

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 27,
                            )),
                        CommonText(
                          text: "Support",
                          fSize: 18,
                          fWeight: FontWeight.w600,
                        )
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Image.asset("assets/images/support.png"),
                    CommonText(
                      text: "How May we Help you",
                      fSize: 28,
                    ),
                    CommonText(
                      text: "Today",
                      fSize: 28,
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    SupportButton(
                        height: screenHeight * 0.06,
                        width: screenWidth,
                        buttonNameImage: "assets/logos/logos_facebook.png",
                        buttonName: "Share the problem in the Facebook group.",
                        fColor: CupertinoColors.white,
                        fWeight: FontWeight.w500,
                        fSize: 12,
                        onTap: () {}),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    SupportButton(
                        height: screenHeight * 0.06,
                        width: screenWidth,
                        buttonNameImage: "assets/logos/Satisfied.png",
                        buttonName: "Feedback & Suggesstion",
                        fColor: CupertinoColors.white,
                        fWeight: FontWeight.w500,
                        fSize: 12,
                        onTap: () {}),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.15,
              ),
              BottomContainer(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                messenger: () {},
                email: () {},
                call: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}