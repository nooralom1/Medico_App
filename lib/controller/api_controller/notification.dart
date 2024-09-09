import 'dart:convert';
import 'package:dr_apointment/database/notification.dart';
import 'package:dr_apointment/model/notification.dart';
import 'package:flutter/cupertino.dart';

class NotificationService {
  static Future<NotificationListModel?> notificationService() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      NotificationListModel response = NotificationListModel.fromJson(
          jsonDecode(jsonEncode(NotificationList.notificationList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
