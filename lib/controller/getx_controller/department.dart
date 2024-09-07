import 'package:dr_apointment/controller/api_controller/department_list.dart';
import 'package:dr_apointment/model/department_list.dart';
import 'package:get/get.dart';

class DepartmentController extends GetxController{

  RxBool isLoading = false.obs;
  RxList<Departments> department = <Departments>[].obs;

  getDepartments()async{
    isLoading.value = true;
    var data = await DepartmentListService.departmentListService();
    department.value = data?.departments??[];
    isLoading.value = false;
  }

  @override
  void onInit() {
    getDepartments();
    super.onInit();
  }
}