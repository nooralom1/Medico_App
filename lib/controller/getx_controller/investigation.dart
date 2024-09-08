import 'package:dr_apointment/controller/api_controller/investigation.dart';
import 'package:dr_apointment/model/investigation_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class InvestigationController extends GetxController {
  TextEditingController searchController = TextEditingController();
  RxBool isLoading = false.obs;
  RxList<Investigations> investigation = <Investigations>[].obs;

  getInvestigations() async {
    isLoading.value = true;
    var data = await InvestigationService.investigationService();
    investigation.value = data?.investigations ?? [];
    isLoading.value = false;
  }

  @override
  void onInit() {
    getInvestigations();
    super.onInit();
  }
}
