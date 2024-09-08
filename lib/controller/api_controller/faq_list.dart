import 'dart:convert';

import 'package:dr_apointment/database/faq_list.dart';
import 'package:dr_apointment/model/faq_list.dart';
import 'package:flutter/cupertino.dart';

class FaqListService {
  static Future<FaqListModel?> faqListService() async {
    try {
      Future.delayed(const Duration(seconds: 2));
      FaqListModel response =
          FaqListModel.fromJson(jsonDecode(jsonEncode(FaqList.faqList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
