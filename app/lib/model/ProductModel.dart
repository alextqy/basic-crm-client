// ignore_for_file: non_constant_identifier_names

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
    this.ProductName = "",
    this.Price = 0,
    this.Cost = 0,
    this.Status = 0,
    this.Remark = "",
    this.CreationTime = 0,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      ID: json["ID"],
      ProductName: json["ProductName"],
      Price: json["Price"],
      Cost: json["Cost"],
      Status: json["Status"],
      Remark: json["Remark"],
      CreationTime: json["CreationTime"],
    );
  }

  List<ProductModel> fromJsonList(String jsonString) {
    List<ProductModel> dataList = (jsonDecode(jsonString) as List).map((i) => ProductModel.fromJson(i)).toList();
    return dataList;
  }
}
