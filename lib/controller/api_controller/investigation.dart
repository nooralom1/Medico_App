import 'dart:convert';
import 'package:dr_apointment/database/investigation_list.dart';
import 'package:dr_apointment/model/investigation_list.dart';
import 'package:flutter/cupertino.dart';

class InvestigationService{
  static Future<InvestigationListModel?> investigationService()async{
    try{
      await Future.delayed(const Duration(seconds: 2));
      InvestigationListModel response = InvestigationListModel.fromJson(jsonDecode(jsonEncode(InvestigationList.investigationList)));
      return response;
    }catch(e){
      debugPrint("Error: $e");
    }
    return null;
  }
}