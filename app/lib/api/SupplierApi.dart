// ignore_for_file: non_constant_identifier_names, file_names

import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class SupplierApi extends BaseApi {
  Future<ResultModel> SupplierNew({
    required URL,
    required Name,
    required Email,
    required Tel,
    required Address,
    required SupplierInfo,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/supplier/new'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'Name': Name.toString(),
        'Email': Email.toString(),
        'Tel': Tel.toString(),
        'Address': Address.toString(),
        'SupplierInfo': SupplierInfo.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultListModel> SupplierList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/supplier/list'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> SupplierAll({
    required URL,
    required Order,
    required Stext,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/supplier/all'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> SupplierData({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/supplier/data'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> SupplierDel({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/supplier/del'),
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
