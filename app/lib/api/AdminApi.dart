// ignore_for_file: file_names, non_constant_identifier_names

import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class AdminApi extends BaseApi {
  Future<ResultModel> AdminSignIn({
    required URL,
    required Account,
    required Password,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/admin/sign/in'),
      body: {
        'Account': Account.toString(),
        'Password': Password.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> AdminSignOut({
    required URL,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/admin/sign/out'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> AdminNew({
    required URL,
    required Account,
    required Password,
    required Name,
    required Remark,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/admin/new'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'Account': Account.toString(),
        'Password': Password.toString(),
        'Name': Name.toString(),
        'Remark': Remark.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultListModel> AdminList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Level,
    required Status,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/admin/list'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Level': Level.toString(),
        'Status': Status.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> AdminAll({
    required URL,
    required Order,
    required Stext,
    required Level,
    required Status,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/admin/all'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Level': Level.toString(),
        'Status': Status.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> AdminData({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/admin/data'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> AdminDel({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/admin/del'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> AdminStatus({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/admin/status'),
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
