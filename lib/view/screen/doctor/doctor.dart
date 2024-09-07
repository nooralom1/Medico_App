import 'package:dr_apointment/controller/getx_controller/doctor.dart';
import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/common_widget/search_feild.dart';
import 'package:dr_apointment/view/screen/doctor/widget/doctore_list_view_card.dart';
import 'package:dr_apointment/view/screen/doctor_info/doctor_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    DoctorController controller = Get.put(DoctorController());
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
                      Get.defaultDialog(title: "Working.....",content: const Center(child: CircularProgressIndicator(),));
                    },
                    hinText: 'Search Doctor Name & BMCD No..',
                    suffixIcon: Icons.cleaning_services,
                    prefixIcon: Icons.search,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonText(
                      text: "Doctor List",
                      fWeight: FontWeight.w700,
                      fSize: 18,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.category_outlined,
                          color: Colors.black,
                        ),
                        CommonText(
                          text: "Neurologist",
                          fSize: 14,
                          fWeight: FontWeight.w500,
                        ),
                        Icon(Icons.arrow_drop_down)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Obx(() => controller.isLoading.isFalse
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.doctor.length,
                          itemBuilder: (context, index) {
                            return DoctorListViewCard(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              imageUrl: '${controller.doctor[index].image}',
                              name: '${controller.doctor[index].name}',
                              specialties:
                                  '${controller.doctor[index].specialty}',
                              neurologist:
                                  '${controller.doctor[index].category}',
                              education:
                                  '${controller.doctor[index].education}',
                              working:
                                  'Working: ${controller.doctor[index].working}',
                              bmDcNumber:
                                  'BMDC Number : ${controller.doctor[index].bmDcNumber}',
                              experience:
                                  'Experience: ${controller.doctor[index].experience}',
                              onTap: () {Get.to(()=>const DoctorInfo());},
                            );
                          },
                        ),
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ))
            ],
          ),
        ),
      ),
    );
  }
}
