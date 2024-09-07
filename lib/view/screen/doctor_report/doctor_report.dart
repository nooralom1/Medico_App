import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/screen/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorReport extends StatelessWidget {
  const DoctorReport({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenHeight * 0.085,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue.shade100,
          title: Image.asset("assets/logos/Group 8.png"),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.notifications_active_outlined),
            )
          ],
        ),
        body: Container(
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
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.off(() => BottomNavBar());
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 27,
                      )),
                  CommonText(
                    text: "Doctor Report",
                    fSize: 18,
                    fWeight: FontWeight.w600,
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.3),
              CommonText(
                text: "Coming Soon",
                fSize: 28,
                fColor: Color(0xffBAAFAF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
