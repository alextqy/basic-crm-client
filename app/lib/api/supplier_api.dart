// ignore_for_file: non_constant_identifier_names

import 'package:http/http.dart';
import 'package:app/api/base_api.dart';
import 'package:app/common/file_helper.dart';
import 'package:app/model/result_model.dart';
import 'package:app/model/result_list_model.dart';

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
    Response response = await post(
      Uri.http(URL, '/supplier/new'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Name': Name.toString(),
        'Email': Email.toString(),
        'Tel': Tel.toString(),
        'Address': Address.toString(),
        'SupplierInfo': SupplierInfo.toString(),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultListModel> SupplierList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
  }) async {
    Response response = await post(
      Uri.http(URL, '/supplier/list'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJsonList(response);
  }

  Future<ResultModel> SupplierAll({
    required URL,
    required Order,
    required Stext,
  }) async {
    Response response = await post(
      Uri.http(URL, '/supplier/all'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> SupplierData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/supplier/data'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> SupplierDel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/supplier/del'),
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
