// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class SalesPlanModel {
  int ID;
  String PlanName;
  int TargetID;
  String PlanContent;
  int CreationTime;
  int Status;
  double Budget;
  int ManagerID;

  SalesPlanModel({
    this.ID = 0,
    this.PlanName = '',
    this.TargetID = 0,
    this.PlanContent = '',
    this.CreationTime = 0,
    this.Status = 0,
    this.Budget = 0,
    this.ManagerID = 0,
  });

  factory SalesPlanModel.FromJson(Map<String, dynamic> Json) {
    return SalesPlanModel(
      ID: Json['ID'],
      PlanName: Json['PlanName'],
      TargetID: Json['TargetID'],
      PlanContent: Json['PlanContent'],
      CreationTime: Json['CreationTime'],
      Status: Json['Status'],
      Budget: Json['Budget'],
      ManagerID: Json['ManagerID'],
    );
  }

  List<SalesPlanModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => SalesPlanModel.FromJson(i)).toList();
  }
}
