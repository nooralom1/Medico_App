import 'dart:convert';

import 'package:dr_apointment/database/language_list.dart';
import 'package:dr_apointment/model/language_list.dart';
import 'package:flutter/cupertino.dart';

class LanguageListService {
  static Future<LanguageListModel?> languageListService() async {
    try {
      LanguageListModel response = LanguageListModel.fromJson(
          jsonDecode(jsonEncode(LanguageList.languageList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
