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
    this.Account = '',
    this.Password = '',
    this.Name = '',
    this.Level = 0,
    this.Status = 0,
    this.Remark = '',
    this.Token = '',
    this.CreationTime = 0,
  });

  factory AfterServiceModel.FromJson(Map<String, dynamic> Json) {
    return AfterServiceModel(
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

  List<AfterServiceModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => AfterServiceModel.FromJson(i)).toList();
  }
}
