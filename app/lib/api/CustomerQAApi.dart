// ignore_for_file: non_constant_identifier_names, file_names

import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class CustomerQAApi extends BaseApi {
  Future<ResultModel> CustomerQANew({
    required URL,
    required Title,
    required Content,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/customer/qa/new'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Title': Title.toString(),
        'Content': Content.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultListModel> CustomerQAList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Display,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/customer/qa/list'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Display': Display.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJsonList(Resp);
  }

  Future<ResultModel> CustomerQAAll({
    required URL,
    required Order,
    required Stext,
    required Display,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/customer/qa/all'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Display': Display.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> CustomerQAData({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/customer/qa/data'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> CustomerQADel({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/customer/qa/del'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> CustomerQADisplay({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/customer/qa/display'),
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
