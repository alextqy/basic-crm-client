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

  factory CompanyModel.FromJson(Map<String, dynamic> Json) {
    return CompanyModel(
      ID: Json['ID'],
      CompanyName: Json['CompanyName'],
      CreationTime: Json['CreationTime'],
      Remark: Json['Remark'],
    );
  }

  List<CompanyModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => CompanyModel.FromJson(i)).toList();
  }
}
