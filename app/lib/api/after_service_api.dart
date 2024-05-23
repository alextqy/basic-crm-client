// ignore_for_file: non_constant_identifier_names

import 'package:http/http.dart';
import 'package:app/api/base_api.dart';
import 'package:app/common/file_helper.dart';
import 'package:app/model/result_model.dart';
import 'package:app/model/result_list_model.dart';

class AfterServiceApi extends BaseApi {
  Future<ResultModel> AfterServiceNew({
    required URL,
    required Account,
    required Password,
    required Name,
    required Remark,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/after/service/new'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Account': Account.toString(),
        'Password': Password.toString(),
        'Name': Name.toString(),
        'Remark': Remark.toString(),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultListModel> AfterServiceList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Level,
    required Status,
  }) async {
    Response response = await post(
      Uri.http(URL, '/after/service/list'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Level': Level.toString(),
        'Status': Status.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJsonList(response);
  }

  Future<ResultModel> AfterServiceAll({
    required URL,
    required Order,
    required Stext,
    required Level,
    required Status,
  }) async {
    Response response = await post(
      Uri.http(URL, '/after/service/all'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Level': Level.toString(),
        'Status': Status.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> AfterServiceData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/after/service/data'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> AfterServiceDel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/after/service/del'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> AfterServiceStatus({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/after/service/status'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> AfterServiceSignIn({
    required URL,
    required Account,
    required Password,
  }) async {
    Response response = await post(
      Uri.http(URL, '/after/service/sign/in'),
      body: {
        'Account': Account.toString(),
        'Password': Password.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> AfterServiceSignOut({
    required URL,
  }) async {
    Response response = await post(
      Uri.http(URL, '/after/service/sign/out'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> AfterServiceUpdate({
    required URL,
    required Password,
    required Name,
    required Remark,
  }) async {
    Response response = await post(
      Uri.http(URL, '/after/service/update'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Password': Password.toString(),
        'Name': Name.toString(),
        'Remark': Remark.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }
}
