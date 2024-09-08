import 'package:dr_apointment/controller/api_controller/doctor_list.dart';
import 'package:dr_apointment/model/doctor_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DoctorController extends GetxController {
  TextEditingController searchController = TextEditingController();
  RxBool isLoading = false.obs;
  RxList<Doctors> doctor = <Doctors>[].obs;

  getHospitalList() async {
    isLoading.value = true;
    var data = await DoctorListService.doctorListService();
    doctor.value = data?.doctors ?? [];
    isLoading.value = false;
  }

  @override
  void onInit() {
    getHospitalList();
    super.onInit();
  }
}
