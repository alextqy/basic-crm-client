// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class AdminModel {
  int ID;
  String Account;
  String Password;
  String Name;
  int Level;
  int Status;
  String Remark;
  String Token;
  int CreationTime;

  AdminModel({
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

  factory AdminModel.fromJson(Map<String, dynamic> json) {
    return AdminModel(
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

  List<AdminModel> fromJsonList(String jsonString) {
    List<AdminModel> dataList = (jsonDecode(jsonString) as List).map((i) => AdminModel.fromJson(i)).toList();
    return dataList;
  }
}
