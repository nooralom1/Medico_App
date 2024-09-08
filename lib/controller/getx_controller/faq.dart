import 'package:dr_apointment/controller/api_controller/faq_list.dart';
import 'package:dr_apointment/model/faq_list.dart';
import 'package:get/get.dart';

class FaqController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<Faqs> faq = <Faqs>[].obs;

  getFaqs() async {
    isLoading.value = true;
    var data = await FaqListService.faqListService();
    faq.value = data?.faqs ?? [];
    isLoading.value = false;
  }

  @override
  void onInit() {
    getFaqs();
    super.onInit();
  }
}
