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

  factory SalesTargetModel.FromJson(Map<String, dynamic> Json) {
    return SalesTargetModel(
      ID: Json['ID'],
      TargetName: Json['TargetName'],
      ExpirationDate: Json['ExpirationDate'],
      CreationTime: Json['CreationTime'],
      AchievementRate: Json['AchievementRate'],
      CustomerID: Json['CustomerID'],
      ManagerID: Json['ManagerID'],
      Remark: Json['Remark'],
    );
  }

  List<SalesTargetModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => SalesTargetModel.FromJson(i)).toList();
  }
}
