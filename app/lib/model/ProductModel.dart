// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:convert';

class ProductModel {
  int ID;
  String ProductName;
  double Price;
  double Cost;
  int Status;
  String Remark;
  int CreationTime;

  ProductModel({
    this.ID = 0,
    this.ProductName = '',
    this.Price = 0,
    this.Cost = 0,
    this.Status = 0,
    this.Remark = '',
    this.CreationTime = 0,
  });

  factory ProductModel.FromJson(Map<String, dynamic> Json) {
    return ProductModel(
      ID: Json['ID'],
      ProductName: Json['ProductName'],
      Price: Json['Price'],
      Cost: Json['Cost'],
      Status: Json['Status'],
      Remark: Json['Remark'],
      CreationTime: Json['CreationTime'],
    );
  }

  List<ProductModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => ProductModel.FromJson(i)).toList();
  }
}
