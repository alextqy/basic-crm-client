// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class AfterServiceModel {
  int ID;
  String Account;
  String Password;
  String Name;
  int Level;
  int Status;
  String Remark;
  String Token;
  int CreationTime;

  AfterServiceModel({
    this.ID = 0,
    this.Account = "",
    this.Password = "",
    this.Name = "",
    this.Level = 0,
    this.Status = 0,
    this.Remark = "",
    this.Token = "",
    this.CreationTime = 0,
  });

  factory AfterServiceModel.fromJson(Map<String, dynamic> json) {
    return AfterServiceModel(
      ID: json["ID"],
      Account: json["Account"],
      Password: json["Password"],
      Name: json["Name"],
      Level: json["Level"],
      Status: json["Status"],
      Remark: json["Remark"],
      Token: json["Token"],
      CreationTime: json["CreationTime"],
    );
  }

  List<AfterServiceModel> fromJsonList(String jsonString) {
    List<AfterServiceModel> dataList = (jsonDecode(jsonString) as List).map((i) => AfterServiceModel.fromJson(i)).toList();
    return dataList;
  }
}
