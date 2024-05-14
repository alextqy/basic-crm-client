// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class CustomerModel {
  int ID;
  String Name;
  int Birthday;
  int Gender;
  String Email;
  String Tel;
  String CustomerInfo;
  int Priority;
  int CreationTime;
  int CompanyID;
  int ManagerID;
  int AfterServiceID;
  int Level;

  CustomerModel({
    this.ID = 0,
    this.Name = '',
    this.Birthday = 0,
    this.Gender = 0,
    this.Email = '',
    this.Tel = '',
    this.CustomerInfo = '',
    this.Priority = 0,
    this.CreationTime = 0,
    this.CompanyID = 0,
    this.ManagerID = 0,
    this.AfterServiceID = 0,
    this.Level = 0,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      ID: json['ID'],
      Name: json['Name'],
      Birthday: json['Birthday'],
      Gender: json['Gender'],
      Email: json['Email'],
      Tel: json['Tel'],
      CustomerInfo: json['CustomerInfo'],
      Priority: json['Priority'],
      CreationTime: json['CreationTime'],
      CompanyID: json['CompanyID'],
      ManagerID: json['ManagerID'],
      AfterServiceID: json['AfterServiceID'],
      Level: json['Level'],
    );
  }

  List<CustomerModel> fromJsonList(String jsonString) {
    List<CustomerModel> dataList = (jsonDecode(jsonString) as List).map((i) => CustomerModel.fromJson(i)).toList();
    return dataList;
  }
}
