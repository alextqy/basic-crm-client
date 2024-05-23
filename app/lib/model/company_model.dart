// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class CompanyModel {
  int ID;
  String CompanyName;
  int CreationTime;
  String Remark;

  CompanyModel({
    this.ID = 0,
    this.CompanyName = '',
    this.CreationTime = 0,
    this.Remark = '',
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      ID: json['ID'],
      CompanyName: json['CompanyName'],
      CreationTime: json['CreationTime'],
      Remark: json['Remark'],
    );
  }

  List<CompanyModel> fromJsonList(String jsonString) {
    return (jsonDecode(jsonString) as List).map((i) => CompanyModel.fromJson(i)).toList();
  }
}
