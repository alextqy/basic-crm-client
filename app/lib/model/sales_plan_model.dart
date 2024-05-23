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

  factory SalesPlanModel.fromJson(Map<String, dynamic> json) {
    return SalesPlanModel(
      ID: json['ID'],
      PlanName: json['PlanName'],
      TargetID: json['TargetID'],
      PlanContent: json['PlanContent'],
      CreationTime: json['CreationTime'],
      Status: json['Status'],
      Budget: json['Budget'],
      ManagerID: json['ManagerID'],
    );
  }

  List<SalesPlanModel> fromJsonList(String jsonString) {
    return (jsonDecode(jsonString) as List).map((i) => SalesPlanModel.fromJson(i)).toList();
  }
}
