import 'package:dr_apointment/controller/getx_controller/hospital.dart';
import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/common_widget/search_feild.dart';
import 'package:dr_apointment/view/screen/doctor_info/doctor_info.dart';
import 'package:dr_apointment/view/screen/hospital/widget/hospital_list_view_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Hospital extends StatelessWidget {
  const Hospital({super.key});

  @override
  Widget build(BuildContext context) {
    HospitalController controller = Get.put(HospitalController());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenHeight * 0.085,
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
                    onTap: () {},
                    hinText: 'Search Hospital name & Reg Code',
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
                      text: "Hospital List",
                      fWeight: FontWeight.w700,
                      fSize: 18,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        CommonText(
                          text: "Mymensingh",
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
                          itemCount: controller.hospital.length,
                          itemBuilder: (context, index) {
                            return HospitalListViewCard(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              imageUrl: '${controller.hospital[index].image}',
                              name: '${controller.hospital[index].name}',
                              category:
                                  'Category: ${controller.hospital[index].category}',
                              location:
                                  '${controller.hospital[index].location}',
                              code: 'Code: ${controller.hospital[index].code}',
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
