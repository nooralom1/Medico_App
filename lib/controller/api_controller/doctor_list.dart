import 'dart:convert';
import 'package:dr_apointment/database/doctor_list.dart';
import 'package:dr_apointment/model/doctor_list.dart';
import 'package:flutter/foundation.dart';

class DoctorListService {
  static Future<DoctorListModel?> doctorListService() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      DoctorListModel response = DoctorListModel.fromJson(
          jsonDecode(jsonEncode(DoctorList.doctorList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
