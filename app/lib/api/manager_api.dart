// ignore_for_file: non_constant_identifier_names

import 'package:http/http.dart';
import 'package:app/api/base_api.dart';
import 'package:app/common/file_helper.dart';
import 'package:app/model/result_model.dart';
import 'package:app/model/result_list_model.dart';

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
    Response response = await post(
      Uri.http(URL, '/manager/new'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Account': Account.toString(),
        'Password': Password.toString(),
        'Name': Name.toString(),
        'Remark': Remark.toString(),
        'GroupID': GroupID.toString(),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
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
    Response response = await post(
      Uri.http(URL, '/manager/list'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Level': Level.toString(),
        'Status': Status.toString(),
        'GroupID': GroupID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJsonList(response);
  }

  Future<ResultModel> ManagerAll({
    required URL,
    required Order,
    required Stext,
    required Level,
    required Status,
    required GroupID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/manager/all'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Level': Level.toString(),
        'Status': Status.toString(),
        'GroupID': GroupID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> ManagerData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/manager/data'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> ManagerDel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/manager/del'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> ManagerStatus({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/manager/status'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> ManagerSignIn({
    required URL,
    required Account,
    required Password,
  }) async {
    Response response = await post(
      Uri.http(URL, '/manager/sign/in'),
      body: {
        'Account': Account.toString(),
        'Password': Password.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> ManagerSignOut({
    required URL,
  }) async {
    Response response = await post(
      Uri.http(URL, '/manager/sign/out'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> ManagerUpdate({
    required URL,
    required Password,
    required Name,
    required Remark,
    required GroupID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/manager/update'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Password': Password.toString(),
        'Name': Name.toString(),
        'Remark': Remark.toString(),
        'GroupID': GroupID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }
}
