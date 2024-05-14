// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class CustomerQAModel {
  int ID;
  String Title;
  String Content;
  int Display;
  int CreationTime;

  CustomerQAModel({
    this.ID = 0,
    this.Title = '',
    this.Content = '',
    this.Display = 0,
    this.CreationTime = 0,
  });

  factory CustomerQAModel.fromJson(Map<String, dynamic> json) {
    return CustomerQAModel(
      ID: json['ID'],
      Title: json['Title'],
      Content: json['Content'],
      Display: json['Display'],
      CreationTime: json['CreationTime'],
    );
  }

  List<CustomerQAModel> fromJsonList(String jsonString) {
    List<CustomerQAModel> dataList = (jsonDecode(jsonString) as List).map((i) => CustomerQAModel.fromJson(i)).toList();
    return dataList;
  }
}
