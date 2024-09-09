import 'dart:convert';

import 'package:dr_apointment/database/category.dart';
import 'package:dr_apointment/model/category.dart';
import 'package:flutter/foundation.dart';

class CategoryService {
  static Future<CategoryListModel?> categoryService() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      CategoryListModel response = CategoryListModel.fromJson(
          jsonDecode(jsonEncode(CategoryList.categoryList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
