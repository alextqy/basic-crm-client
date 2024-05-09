// ignore_for_file: non_constant_identifier_names

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
  int Type;
  int Payment;
  int Review;

  OrderModel({
    this.ID = 0,
    this.OrderNo = "",
    this.ProductID = 0,
    this.ManagerID = 0,
    this.CustomerID = 0,
    this.DistributorID = 0,
    this.OrderPrice = 0,
    this.ProductPrice = 0,
    this.ProductCost = 0,
    this.Status = 0,
    this.Remark = "",
    this.CreationTime = 0,
    this.Type = 0,
    this.Payment = 0,
    this.Review = 0,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      ID: json["ID"],
      OrderNo: json["OrderNo"],
      ProductID: json["ProductID"],
      ManagerID: json["ManagerID"],
      CustomerID: json["CustomerID"],
      DistributorID: json["DistributorID"],
      OrderPrice: json["OrderPrice"],
      ProductPrice: json["ProductPrice"],
      ProductCost: json["ProductCost"],
      Status: json["Status"],
      Remark: json["Remark"],
      CreationTime: json["CreationTime"],
      Type: json["Type"],
      Payment: json["Payment"],
      Review: json["Review"],
    );
  }

  List<OrderModel> fromJsonList(String jsonString) {
    List<OrderModel> dataList = (jsonDecode(jsonString) as List).map((i) => OrderModel.fromJson(i)).toList();
    return dataList;
  }
}
