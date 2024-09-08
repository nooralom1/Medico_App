import 'package:dr_apointment/controller/api_controller/category.dart';
import 'package:dr_apointment/model/category.dart';
import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/screen/department/department.dart';
import 'package:dr_apointment/view/screen/doctor/doctor.dart';
import 'package:dr_apointment/view/screen/doctor_report/doctor_report.dart';
import 'package:dr_apointment/view/screen/faq/faq.dart';
import 'package:dr_apointment/view/screen/hospital/hospital.dart';
import 'package:dr_apointment/view/screen/investigation/investigation.dart';
import 'package:dr_apointment/view/screen/settings/settings.dart';
import 'package:dr_apointment/view/screen/support/support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();
  RxBool isLoading = false.obs;
  RxList<Categories> category = <Categories>[].obs;

  getCategory() async {
    isLoading.value = true;
    var data = await CategoryService.categoryService();
    category.value = data?.categories ?? [];
    isLoading.value = false;
  }

  navigatePage(int index) {
    isLoading.value = true;
    switch (index) {
      case 0:
        Get.to(() => const Hospital());
        break;
      case 1:
        Get.to(() => const Doctor());
        break;
      case 2:
        Get.to(() => const Investigation());
        break;
      case 3:
        Get.to(() => const DoctorReport());
        break;
      case 4:
        Get.to(() => const Department());
        break;
      case 5:
        inviteDialogBox();
        break;
      case 6:
        Get.to(() => const Faq());
        break;
      case 7:
        Get.to(() => const Support());
        break;
      case 8:
        Get.to(() => const Settings());
        break;
    }
    isLoading.value = false;
  }

  inviteDialogBox() async {
    Get.defaultDialog(
      title: "Send Invitation",
      titleStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      titlePadding: const EdgeInsets.only(right: 50, top: 15),
      contentPadding: const EdgeInsets.only(right: 110, top: 20, bottom: 10),
      content: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            text: "Invite By SMS",
            fSize: 16,
          ),
          SizedBox(
            height: 15,
          ),
          CommonText(
            text: "Share",
            fSize: 16,
          ),
        ],
      ),
    );
  }

  @override
  void onInit() {
    getCategory();
    super.onInit();
  }
}
