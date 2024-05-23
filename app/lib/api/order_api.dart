// ignore_for_file: non_constant_identifier_names

import 'package:http/http.dart';
import 'package:app/api/base_api.dart';
import 'package:app/common/file_helper.dart';
import 'package:app/model/result_model.dart';
import 'package:app/model/result_list_model.dart';

class OrderApi extends BaseApi {
  Future<ResultModel> OrderNew({
    required URL,
    required OrderNo,
    required ProductID,
    required ManagerID,
    required CustomerID,
    required DistributorID,
    required OrderPrice,
    required Remark,
    required OrderType,
    required Payment,
    required Review,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/order/new'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'OrderNo': OrderNo.toString(),
        'ProductID': ProductID.toString(),
        'ManagerID': ManagerID.toString(),
        'CustomerID': CustomerID.toString(),
        'DistributorID': DistributorID.toString(),
        'OrderPrice': OrderPrice.toString(),
        'Remark': Remark.toString(),
        'OrderType': OrderType.toString(),
        'Payment': Payment.toString(),
        'Review': Review.toString(),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultListModel> OrderList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required ProductID,
    required ManagerID,
    required CustomerID,
    required DistributorID,
    required Status,
    required OrderType,
    required Payment,
    required Review,
  }) async {
    Response response = await post(
      Uri.http(URL, '/order/list'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'ProductID': ProductID.toString(),
        'ManagerID': ManagerID.toString(),
        'CustomerID': CustomerID.toString(),
        'DistributorID': DistributorID.toString(),
        'Status': Status.toString(),
        'OrderType': OrderType.toString(),
        'Payment': Payment.toString(),
        'Review': Review.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJsonList(response);
  }

  Future<ResultModel> OrderAll({
    required URL,
    required Order,
    required Stext,
    required ProductID,
    required ManagerID,
    required CustomerID,
    required DistributorID,
    required Status,
    required OrderType,
    required Payment,
    required Review,
  }) async {
    Response response = await post(
      Uri.http(URL, '/order/all'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'ProductID': ProductID.toString(),
        'ManagerID': ManagerID.toString(),
        'CustomerID': CustomerID.toString(),
        'DistributorID': DistributorID.toString(),
        'Status': Status.toString(),
        'OrderType': OrderType.toString(),
        'Payment': Payment.toString(),
        'Review': Review.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> OrderData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/order/data'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> OrderDel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/order/del'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }
}
