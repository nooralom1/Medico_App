import 'package:dr_apointment/view/screen/welcome/welcome.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
  
  nextPageFun()async{
    await Future.delayed(const Duration(seconds: 3));
    Get.to(const Welcome());
  }

  @override
  void onInit() {
    nextPageFun();
    super.onInit();
  }
}