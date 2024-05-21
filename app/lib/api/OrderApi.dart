// ignore_for_file: non_constant_identifier_names, file_names

import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

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
    Response Resp = await post(
      Uri.http(URL, '/order/new'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
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
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
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
    Response Resp = await post(
      Uri.http(URL, '/order/list'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
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
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
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
    Response Resp = await post(
      Uri.http(URL, '/order/all'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
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
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> OrderData({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/order/data'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> OrderDel({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/order/del'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }
}
