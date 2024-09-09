import 'package:dr_apointment/controller/getx_controller/notification.dart';
import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/screen/bottom_navigation_bar.dart';
import 'package:dr_apointment/view/screen/notification/widget/notification_view_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    NotificationController controller = Get.put(NotificationController());
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
                    text: "Notification",
                    fSize: 18,
                    fWeight: FontWeight.w600,
                  )
                ],
              ),
              Obx(() => controller.isLoading.isFalse
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.notification.length,
                          itemBuilder: (context, index) {
                            return NotificationViewCard(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              text:
                                  '${controller.notification[index].notification}',
                            );
                          },
                        ),
                      ),
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ))
            ],
          ),
        ),
      ),
    );
  }
}
