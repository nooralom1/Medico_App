import 'package:dr_apointment/controller/api_controller/language_list.dart';
import 'package:dr_apointment/model/language_list.dart';
import 'package:get/get.dart';

class LanguageListController extends GetxController{
  RxBool isLoading = false.obs;
  RxList<Languages> language = <Languages>[].obs;
  getLanguages()async{
    isLoading.value = true;
    var data = await LanguageListService.languageListService();
    language.value = data?.languages??[];
    isLoading.value = false;
  }

  @override
  void onInit() {
    getLanguages();
    super.onInit();
  }
}