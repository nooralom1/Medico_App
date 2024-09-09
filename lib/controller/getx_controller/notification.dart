import 'package:dr_apointment/controller/api_controller/notification.dart';
import 'package:dr_apointment/model/notification.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<Notifications> notification = <Notifications>[].obs;

  getNotifications() async {
    isLoading.value = true;
    var data = await NotificationService.notificationService();
    notification.value = data?.notifications ?? [];
    isLoading.value = false;
  }

  @override
  void onInit() {
    getNotifications();
    super.onInit();
  }
}
