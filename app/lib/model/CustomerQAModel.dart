// ignore_for_file: non_constant_identifier_names, file_names

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

  factory CustomerQAModel.FromJson(Map<String, dynamic> Json) {
    return CustomerQAModel(
      ID: Json['ID'],
      Title: Json['Title'],
      Content: Json['Content'],
      Display: Json['Display'],
      CreationTime: Json['CreationTime'],
    );
  }

  List<CustomerQAModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => CustomerQAModel.FromJson(i)).toList();
  }
}
