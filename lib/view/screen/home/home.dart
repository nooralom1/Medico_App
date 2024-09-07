import 'package:dr_apointment/controller/getx_controller/home.dart';
import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/screen/doctor/doctor.dart';
import 'package:dr_apointment/view/screen/home/widget/category_view_card.dart';
import 'package:dr_apointment/view/screen/home/widget/custom_slider.dart';
import 'package:dr_apointment/view/common_widget/search_feild.dart';
import 'package:dr_apointment/view/screen/hospital/hospital.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());

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
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  height: screenHeight * 0.06,
                  child: SearchField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    textEditingController: controller.searchController,
                    onTap: () {
                      Get.defaultDialog(
                          title: "Working.....",
                          content: Center(
                            child: CircularProgressIndicator(),
                          ));
                    },
                    hinText: 'Search Hospital for doctor',
                    suffixIcon: Icons.search,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              CustomSlider(
                  screenHeight: screenHeight, screenWidth: screenWidth),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              CommonText(
                text: "Category",
                fWeight: FontWeight.w600,
                fSize: 20,
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Obx(
                () => controller.isLoading.isFalse
                    ? Expanded(
                        child: Container(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.95,
                          decoration: BoxDecoration(
                              color: Color(0xffD4D4D4),
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: GridView.builder(
                                itemCount: controller.category.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                itemBuilder: (context, index) {
                                  return CategoryViewCard(
                                    screenHeight: screenHeight,
                                    screenWidth: screenWidth,
                                    imageUrl:
                                        '${controller.category[index].image}',
                                    tittle:
                                        '${controller.category[index].name}',
                                    onTap: () {
                                      controller.navigatePage(index);
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
