// ignore_for_file: file_names, non_constant_identifier_names

import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class SalesTargetApi extends BaseApi {
  Future<ResultModel> SalesTargetNew({
    required URL,
    required TargetName,
    required ExpirationDate,
    required CustomerID,
    required Remark,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/sales/target/new'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'TargetName': TargetName.toString(),
        'ExpirationDate': ExpirationDate.toString(),
        'CustomerID': CustomerID.toString(),
        'Remark': Remark.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
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
    Response Resp = await post(
      Uri.http(URL, '/sales/target/list'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'CustomerID': CustomerID.toString(),
        'ManagerID': ManagerID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> SalesTargetAll({
    required URL,
    required Order,
    required Stext,
    required CustomerID,
    required ManagerID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/sales/target/all'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'CustomerID': CustomerID.toString(),
        'ManagerID': ManagerID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> SalesTargetData({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/sales/target/data'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> SalesTargetDel({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/sales/target/del'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }
}
