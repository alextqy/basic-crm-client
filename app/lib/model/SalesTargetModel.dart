// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class SalesTargetModel {
  int ID;
  String TargetName;
  int ExpirationDate;
  int CreationTime;
  double AchievementRate;
  int CustomerID;
  int ManagerID;
  String Remark;

  SalesTargetModel({
    this.ID = 0,
    this.TargetName = '',
    this.ExpirationDate = 0,
    this.CreationTime = 0,
    this.AchievementRate = 0,
    this.CustomerID = 0,
    this.ManagerID = 0,
    this.Remark = '',
  });

  factory SalesTargetModel.fromJson(Map<String, dynamic> json) {
    return SalesTargetModel(
      ID: json['ID'],
      TargetName: json['TargetName'],
      ExpirationDate: json['ExpirationDate'],
      CreationTime: json['CreationTime'],
      AchievementRate: json['AchievementRate'],
      CustomerID: json['CustomerID'],
      ManagerID: json['ManagerID'],
      Remark: json['Remark'],
    );
  }

  List<SalesTargetModel> fromJsonList(String jsonString) {
    List<SalesTargetModel> dataList = (jsonDecode(jsonString) as List).map((i) => SalesTargetModel.fromJson(i)).toList();
    return dataList;
  }
}
