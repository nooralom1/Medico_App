import 'dart:convert';
import 'package:dr_apointment/database/hospital_list.dart';
import 'package:dr_apointment/model/hospital_list.dart';
import 'package:flutter/foundation.dart';

class HospitalListService {
  static Future<HospitalListModel?> hospitalListService() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      HospitalListModel response = HospitalListModel.fromJson(
          jsonDecode(jsonEncode(HospitalList.hospitalList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
