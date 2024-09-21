import 'package:dr_apointment/controller/getx_controller/department.dart';
import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/common_widget/common_button.dart';
import 'package:dr_apointment/view/screen/department/widget/department_list_view_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Department extends StatelessWidget {
  const Department({super.key});

  @override
  Widget build(BuildContext context) {
    DepartmentController controller = Get.put(DepartmentController());
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
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 27,
                      )),
                  const CommonText(
                    text: "Department",
                    fSize: 18,
                    fWeight: FontWeight.w600,
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Obx(
                () => controller.isLoading.isFalse
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          height: screenHeight * 0.4,
                          child: GridView.builder(
                            primary: false,
                            itemCount: controller.department.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4, childAspectRatio: 0.85),
                            itemBuilder: (context, index) {
                              return DepartmentListViewCard(
                                image: '${controller.department[index].image}',
                                name: '${controller.department[index].name}',
                                onTap: () {},
                              );
                            },
                          ),
                        ),
                      )
                    : const Center(child: CircularProgressIndicator()),
              ),
              SizedBox(height: screenHeight * 0.02),
              CommonButton(
                  height: screenHeight * 0.07,
                  width: screenWidth * 0.95,
                  buttonName: "More Department",
                  fSize: 14,
                  fColor: Colors.white,
                  onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}