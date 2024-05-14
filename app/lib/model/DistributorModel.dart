// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class DistributorModel {
  int ID;
  String Name;
  String Email;
  String Tel;
  String DistributorInfo;
  int CreationTime;
  int CompanyID;
  int ManagerID;
  int AfterServiceID;
  int Level;

  DistributorModel({
    this.ID = 0,
    this.Name = '',
    this.Email = '',
    this.Tel = '',
    this.DistributorInfo = '',
    this.CreationTime = 0,
    this.CompanyID = 0,
    this.ManagerID = 0,
    this.AfterServiceID = 0,
    this.Level = 0,
  });

  factory DistributorModel.fromJson(Map<String, dynamic> json) {
    return DistributorModel(
      ID: json['ID'],
      Name: json['Name'],
      Email: json['Email'],
      Tel: json['Tel'],
      DistributorInfo: json['DistributorInfo'],
      CreationTime: json['CreationTime'],
      CompanyID: json['CompanyID'],
      ManagerID: json['ManagerID'],
      AfterServiceID: json['AfterServiceID'],
      Level: json['Level'],
    );
  }

  List<DistributorModel> fromJsonList(String jsonString) {
    List<DistributorModel> dataList = (jsonDecode(jsonString) as List).map((i) => DistributorModel.fromJson(i)).toList();
    return dataList;
  }
}
