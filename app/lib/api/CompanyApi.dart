// ignore_for_file: file_names, non_constant_identifier_names

import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class CompanyApi extends BaseApi {
  Future<ResultModel> CompanyNew({
    required URL,
    required CompanyName,
    required Remark,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/company/new'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'CompanyName': CompanyName.toString(),
        'Remark': Remark.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultListModel> CompanyList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/company/list'),
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

  Future<ResultModel> CompanyAll({
    required URL,
    required Order,
    required Stext,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/company/all'),
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

  Future<ResultModel> CompanyData({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/company/data'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> CompanyDel({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/company/del'),
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
