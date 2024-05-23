// ignore_for_file: non_constant_identifier_names

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

  factory SupplierModel.fromJson(Map<String, dynamic> json) {
    return SupplierModel(
      ID: json['ID'],
      Name: json['Name'],
      Email: json['Email'],
      Tel: json['Tel'],
      Address: json['Address'],
      SupplierInfo: json['SupplierInfo'],
      CreationTime: json['CreationTime'],
    );
  }

  List<SupplierModel> fromJsonList(String jsonString) {
    return (jsonDecode(jsonString) as List).map((i) => SupplierModel.fromJson(i)).toList();
  }
}
