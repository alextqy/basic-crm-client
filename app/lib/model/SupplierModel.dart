// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:convert';

class SupplierModel {
  int ID;
  String Name;
  String Email;
  String Tel;
  String Address;
  String SupplierInfo;
  int CreationTime;

  SupplierModel({
    this.ID = 0,
    this.Name = '',
    this.Email = '',
    this.Tel = '',
    this.Address = '',
    this.SupplierInfo = '',
    this.CreationTime = 0,
  });

  factory SupplierModel.FromJson(Map<String, dynamic> Json) {
    return SupplierModel(
      ID: Json['ID'],
      Name: Json['Name'],
      Email: Json['Email'],
      Tel: Json['Tel'],
      Address: Json['Address'],
      SupplierInfo: Json['SupplierInfo'],
      CreationTime: Json['CreationTime'],
    );
  }

  List<SupplierModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => SupplierModel.FromJson(i)).toList();
  }
}
