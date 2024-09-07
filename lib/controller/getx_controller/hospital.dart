import 'package:dr_apointment/controller/api_controller/hospital_list.dart';
import 'package:dr_apointment/model/hospital_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HospitalController extends GetxController{

  TextEditingController searchController = TextEditingController();
  RxBool isLoading = false.obs;
  RxList<Hospitals> hospital = <Hospitals> [].obs;

  getHospitalList()async{
    isLoading.value = true;
    var data = await HospitalListService.hospitalListService();
    hospital.value = data?.hospitals??[];
    isLoading.value= false;
  }
  @override
  void onInit() {
    getHospitalList();
    super.onInit();
  }
}