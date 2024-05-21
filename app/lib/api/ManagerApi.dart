// ignore_for_file: non_constant_identifier_names, file_names

import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class ManagerApi extends BaseApi {
  Future<ResultModel> ManagerNew({
    required URL,
    required Account,
    required Password,
    required Name,
    required Remark,
    required GroupID,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/manager/new'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Account': Account.toString(),
        'Password': Password.toString(),
        'Name': Name.toString(),
        'Remark': Remark.toString(),
        'GroupID': GroupID.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultListModel> ManagerList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Level,
    required Status,
    required GroupID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/manager/list'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Level': Level.toString(),
        'Status': Status.toString(),
        'GroupID': GroupID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> ManagerAll({
    required URL,
    required Order,
    required Stext,
    required Level,
    required Status,
    required GroupID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/manager/all'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Level': Level.toString(),
        'Status': Status.toString(),
        'GroupID': GroupID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> ManagerData({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/manager/data'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> ManagerDel({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/manager/del'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> ManagerStatus({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/manager/status'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> ManagerSignIn({
    required URL,
    required Account,
    required Password,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/manager/sign/in'),
      body: {
        'Account': Account.toString(),
        'Password': Password.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> ManagerSignOut({
    required URL,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/manager/sign/out'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> ManagerUpdate({
    required URL,
    required Password,
    required Name,
    required Remark,
    required GroupID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/manager/update'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Password': Password.toString(),
        'Name': Name.toString(),
        'Remark': Remark.toString(),
        'GroupID': GroupID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }
}
