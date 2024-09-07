import 'package:dr_apointment/controller/getx_controller/investigation.dart';
import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/common_widget/search_feild.dart';
import 'package:dr_apointment/view/screen/investigation/widget/list_view_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bottom_navigation_bar.dart';

class Investigation extends StatelessWidget {
  const Investigation({super.key});

  @override
  Widget build(BuildContext context) {
    InvestigationController controller = Get.put(InvestigationController());
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
                    text: "Investigation",
                    fSize: 18,
                    fWeight: FontWeight.w600,
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  height: screenHeight * 0.06,
                  child: SearchField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    textEditingController: controller.searchController,
                    onTap: () {},
                    hinText: 'Search Investigation ',
                    suffixIcon: Icons.search,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Obx(() => controller.isLoading.isFalse
                  ? Expanded(
                      child: ListView.builder(
                          itemCount: controller.investigation.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return InvestigationListViewCard(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              onTap: () {},
                              title: '${controller.investigation[index].title}',
                            );
                          }))
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