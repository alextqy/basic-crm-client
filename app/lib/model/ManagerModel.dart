// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:convert';

class ManagerModel {
  int ID;
  String Account;
  String Password;
  String Name;
  int Level;
  int Status;
  String Remark;
  String Token;
  int CreationTime;
  int GroupID;

  ManagerModel({
    this.ID = 0,
    this.Account = '',
    this.Password = '',
    this.Name = '',
    this.Level = 0,
    this.Status = 0,
    this.Remark = '',
    this.Token = '',
    this.CreationTime = 0,
    this.GroupID = 0,
  });

  factory ManagerModel.FromJson(Map<String, dynamic> Json) {
    return ManagerModel(
      ID: Json['ID'],
      Account: Json['Account'],
      Password: Json['Password'],
      Name: Json['Name'],
      Level: Json['Level'],
      Status: Json['Status'],
      Remark: Json['Remark'],
      Token: Json['Token'],
      CreationTime: Json['CreationTime'],
      GroupID: Json['GroupID'],
    );
  }

  List<ManagerModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => ManagerModel.FromJson(i)).toList();
  }
}
