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

  factory CustomerModel.FromJson(Map<String, dynamic> Json) {
    return CustomerModel(
      ID: Json['ID'],
      Name: Json['Name'],
      Birthday: Json['Birthday'],
      Gender: Json['Gender'],
      Email: Json['Email'],
      Tel: Json['Tel'],
      CustomerInfo: Json['CustomerInfo'],
      Priority: Json['Priority'],
      CreationTime: Json['CreationTime'],
      CompanyID: Json['CompanyID'],
      ManagerID: Json['ManagerID'],
      AfterServiceID: Json['AfterServiceID'],
      Level: Json['Level'],
    );
  }

  List<CustomerModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => CustomerModel.FromJson(i)).toList();
  }
}
