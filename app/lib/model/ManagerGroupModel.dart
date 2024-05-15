// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class ManagerGroupModel {
  int ID;
  String GroupName;
  int CreationTime;
  String Remark;

  ManagerGroupModel({
    this.ID = 0,
    this.GroupName = '',
    this.CreationTime = 0,
    this.Remark = '',
  });

  factory ManagerGroupModel.FromJson(Map<String, dynamic> Json) {
    return ManagerGroupModel(
      ID: Json['ID'],
      GroupName: Json['GroupName'],
      CreationTime: Json['CreationTime'],
      Remark: Json['Remark'],
    );
  }

  List<ManagerGroupModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => ManagerGroupModel.FromJson(i)).toList();
  }
}
