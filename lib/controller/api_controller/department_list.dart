import 'dart:convert';

import 'package:dr_apointment/database/department_list.dart';
import 'package:dr_apointment/model/department_list.dart';
import 'package:flutter/cupertino.dart';

class DepartmentListService {
  static Future<DepartmentListModel?> departmentListService() async {
    try {
      Future.delayed(const Duration(seconds: 2));
      DepartmentListModel response = DepartmentListModel.fromJson(
          jsonDecode(jsonEncode(DepartmentList.departmentList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
