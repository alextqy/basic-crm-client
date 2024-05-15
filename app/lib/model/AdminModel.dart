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
    this.Account = '',
    this.Password = '',
    this.Name = '',
    this.Level = 0,
    this.Status = 0,
    this.Remark = '',
    this.Token = '',
    this.CreationTime = 0,
  });

  factory AdminModel.FromJson(Map<String, dynamic> Json) {
    return AdminModel(
      ID: Json['ID'],
      Account: Json['Account'],
      Password: Json['Password'],
      Name: Json['Name'],
      Level: Json['Level'],
      Status: Json['Status'],
      Remark: Json['Remark'],
      Token: Json['Token'],
      CreationTime: Json['CreationTime'],
    );
  }

  List<AdminModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => AdminModel.FromJson(i)).toList();
  }
}
