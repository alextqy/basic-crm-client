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

  factory DistributorModel.FromJson(Map<String, dynamic> Json) {
    return DistributorModel(
      ID: Json['ID'],
      Name: Json['Name'],
      Email: Json['Email'],
      Tel: Json['Tel'],
      DistributorInfo: Json['DistributorInfo'],
      CreationTime: Json['CreationTime'],
      CompanyID: Json['CompanyID'],
      ManagerID: Json['ManagerID'],
      AfterServiceID: Json['AfterServiceID'],
      Level: Json['Level'],
    );
  }

  List<DistributorModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => DistributorModel.FromJson(i)).toList();
  }
}
