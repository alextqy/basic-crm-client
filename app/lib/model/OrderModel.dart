// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:convert';

class OrderModel {
  int ID;
  String OrderNo;
  int ProductID;
  int ManagerID;
  int CustomerID;
  int DistributorID;
  double OrderPrice;
  double ProductPrice;
  double ProductCost;
  int Status;
  String Remark;
  int CreationTime;
  int OrderType;
  int Payment;
  int Review;

  OrderModel({
    this.ID = 0,
    this.OrderNo = '',
    this.ProductID = 0,
    this.ManagerID = 0,
    this.CustomerID = 0,
    this.DistributorID = 0,
    this.OrderPrice = 0,
    this.ProductPrice = 0,
    this.ProductCost = 0,
    this.Status = 0,
    this.Remark = '',
    this.CreationTime = 0,
    this.OrderType = 0,
    this.Payment = 0,
    this.Review = 0,
  });

  factory OrderModel.FromJson(Map<String, dynamic> Json) {
    return OrderModel(
      ID: Json['ID'],
      OrderNo: Json['OrderNo'],
      ProductID: Json['ProductID'],
      ManagerID: Json['ManagerID'],
      CustomerID: Json['CustomerID'],
      DistributorID: Json['DistributorID'],
      OrderPrice: Json['OrderPrice'],
      ProductPrice: Json['ProductPrice'],
      ProductCost: Json['ProductCost'],
      Status: Json['Status'],
      Remark: Json['Remark'],
      CreationTime: Json['CreationTime'],
      OrderType: Json['OrderType'],
      Payment: Json['Payment'],
      Review: Json['Review'],
    );
  }

  List<OrderModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => OrderModel.FromJson(i)).toList();
  }
}
