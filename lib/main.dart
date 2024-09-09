import 'package:dr_apointment/view/screen/bottom_navigation_bar.dart';
import 'package:dr_apointment/view/screen/change_language/change_language.dart';
import 'package:dr_apointment/view/screen/department/department.dart';
import 'package:dr_apointment/view/screen/doctor/doctor.dart';
import 'package:dr_apointment/view/screen/doctor_info/doctor_info.dart';
import 'package:dr_apointment/view/screen/doctor_report/doctor_report.dart';
import 'package:dr_apointment/view/screen/faq/faq.dart';
import 'package:dr_apointment/view/screen/home/home.dart';
import 'package:dr_apointment/view/screen/hospital/hospital.dart';
import 'package:dr_apointment/view/screen/investigation/investigation.dart';
import 'package:dr_apointment/view/screen/notification/notification.dart';
import 'package:dr_apointment/view/screen/settings/settings.dart';
import 'package:dr_apointment/view/screen/splash/splash.dart';
import 'package:dr_apointment/view/screen/support/support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeLanguage(),
    );
  }
}
