// ignore_for_file: non_constant_identifier_names

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

  factory ManagerModel.fromJson(Map<String, dynamic> json) {
    return ManagerModel(
      ID: json['ID'],
      Account: json['Account'],
      Password: json['Password'],
      Name: json['Name'],
      Level: json['Level'],
      Status: json['Status'],
      Remark: json['Remark'],
      Token: json['Token'],
      CreationTime: json['CreationTime'],
      GroupID: json['GroupID'],
    );
  }

  List<ManagerModel> fromJsonList(String jsonString) {
    List<ManagerModel> dataList = (jsonDecode(jsonString) as List).map((i) => ManagerModel.fromJson(i)).toList();
    return dataList;
  }
}
