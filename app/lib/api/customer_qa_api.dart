// ignore_for_file: non_constant_identifier_names

import 'package:http/http.dart';
import 'package:app/api/base_api.dart';
import 'package:app/common/file_helper.dart';
import 'package:app/model/result_model.dart';
import 'package:app/model/result_list_model.dart';

class CustomerQAApi extends BaseApi {
  Future<ResultModel> CustomerQANew({
    required URL,
    required Title,
    required Content,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/customer/qa/new'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Title': Title.toString(),
        'Content': Content.toString(),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultListModel> CustomerQAList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Display,
  }) async {
    Response response = await post(
      Uri.http(URL, '/customer/qa/list'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Display': Display.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJsonList(response);
  }

  Future<ResultModel> CustomerQAAll({
    required URL,
    required Order,
    required Stext,
    required Display,
  }) async {
    Response response = await post(
      Uri.http(URL, '/customer/qa/all'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Display': Display.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> CustomerQAData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/customer/qa/data'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> CustomerQADel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/customer/qa/del'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> CustomerQADisplay({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/customer/qa/display'),
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
