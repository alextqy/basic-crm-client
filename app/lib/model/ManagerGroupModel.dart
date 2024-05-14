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

  factory ManagerGroupModel.fromJson(Map<String, dynamic> json) {
    return ManagerGroupModel(
      ID: json['ID'],
      GroupName: json['GroupName'],
      CreationTime: json['CreationTime'],
      Remark: json['Remark'],
    );
  }

  List<ManagerGroupModel> fromJsonList(String jsonString) {
    List<ManagerGroupModel> dataList = (jsonDecode(jsonString) as List).map((i) => ManagerGroupModel.fromJson(i)).toList();
    return dataList;
  }
}
