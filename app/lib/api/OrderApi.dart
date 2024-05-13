// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class OrderApi extends BaseApi {
  Future<ResultModel> OrderNew([
    dynamic URL,
    dynamic OrderNo,
    dynamic ProductID,
    dynamic ManagerID,
    dynamic CustomerID,
    dynamic DistributorID,
    dynamic OrderPrice,
    dynamic Remark,
    dynamic OrderType,
    dynamic Payment,
    dynamic Review,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/order/new"),
      body: {
        "Token": FileHelper().Read("Token"),
        "OrderNo": OrderNo.toString(),
        "ProductID": ProductID.toString(),
        "ManagerID": ManagerID.toString(),
        "CustomerID": CustomerID.toString(),
        "DistributorID": DistributorID.toString(),
        "OrderPrice": OrderPrice.toString(),
        "Remark": Remark.toString(),
        "OrderType": OrderType.toString(),
        "Payment": Payment.toString(),
        "Review": Review.toString(),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultListModel> OrderList([
    dynamic URL,
    dynamic Page,
    dynamic PageSize,
    dynamic Order,
    dynamic Stext,
    dynamic ProductID,
    dynamic ManagerID,
    dynamic CustomerID,
    dynamic DistributorID,
    dynamic Status,
    dynamic OrderType,
    dynamic Payment,
    dynamic Review,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/order/list"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Page": Page.toString(),
        "PageSize": PageSize.toString(),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "ProductID": ProductID.toString(),
        "ManagerID": ManagerID.toString(),
        "CustomerID": CustomerID.toString(),
        "DistributorID": DistributorID.toString(),
        "Status": Status.toString(),
        "OrderType": OrderType.toString(),
        "Payment": Payment.toString(),
        "Review": Review.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultListModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> OrderAll([
    dynamic URL,
    dynamic Order,
    dynamic Stext,
    dynamic ProductID,
    dynamic ManagerID,
    dynamic CustomerID,
    dynamic DistributorID,
    dynamic Status,
    dynamic OrderType,
    dynamic Payment,
    dynamic Review,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/order/all"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "ProductID": ProductID.toString(),
        "ManagerID": ManagerID.toString(),
        "CustomerID": CustomerID.toString(),
        "DistributorID": DistributorID.toString(),
        "Status": Status.toString(),
        "OrderType": OrderType.toString(),
        "Payment": Payment.toString(),
        "Review": Review.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> OrderData([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/order/data"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> OrderDel([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/order/del"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }
}
