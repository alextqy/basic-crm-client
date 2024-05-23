// ignore_for_file: non_constant_identifier_names

import 'package:http/http.dart';
import 'package:app/api/base_api.dart';
import 'package:app/common/file_helper.dart';
import 'package:app/model/result_model.dart';
import 'package:app/model/result_list_model.dart';

class SalesTargetApi extends BaseApi {
  Future<ResultModel> SalesTargetNew({
    required URL,
    required TargetName,
    required ExpirationDate,
    required CustomerID,
    required Remark,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/sales/target/new'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'TargetName': TargetName.toString(),
        'ExpirationDate': ExpirationDate.toString(),
        'CustomerID': CustomerID.toString(),
        'Remark': Remark.toString(),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultListModel> SalesTargetList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required CustomerID,
    required ManagerID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/sales/target/list'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'CustomerID': CustomerID.toString(),
        'ManagerID': ManagerID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJsonList(response);
  }

  Future<ResultModel> SalesTargetAll({
    required URL,
    required Order,
    required Stext,
    required CustomerID,
    required ManagerID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/sales/target/all'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'CustomerID': CustomerID.toString(),
        'ManagerID': ManagerID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> SalesTargetData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/sales/target/data'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> SalesTargetDel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/sales/target/del'),
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
