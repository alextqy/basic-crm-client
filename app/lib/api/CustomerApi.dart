// ignore_for_file: non_constant_identifier_names, file_names

import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class CustomerApi extends BaseApi {
  Future<ResultModel> CustomerNew({
    required URL,
    required Name,
    required Birthday,
    required Gender,
    required Email,
    required Tel,
    required CustomerInfo,
    required Priority,
    required CompanyID,
    required AfterServiceID,
    required Level,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/customer/new'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Name': Name.toString(),
        'Birthday': Birthday.toString(),
        'Gender': Gender.toString(),
        'Email': Email.toString(),
        'Tel': Tel.toString(),
        'CustomerInfo': CustomerInfo.toString(),
        'Priority': Priority.toString(),
        'CompanyID': CompanyID.toString(),
        'AfterServiceID': AfterServiceID.toString(),
        'Level': Level.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultListModel> CustomerList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Gender,
    required Priority,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/customer/list'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Gender': Gender.toString(),
        'Priority': Priority.toString(),
        'CompanyID': CompanyID.toString(),
        'ManagerID': ManagerID.toString(),
        'AfterServiceID': AfterServiceID.toString(),
        'Level': Level.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> CustomerAll({
    required URL,
    required Order,
    required Stext,
    required Gender,
    required Priority,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/customer/all'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Gender': Gender.toString(),
        'Priority': Priority.toString(),
        'CompanyID': CompanyID.toString(),
        'ManagerID': ManagerID.toString(),
        'AfterServiceID': AfterServiceID.toString(),
        'Level': Level.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> CustomerData({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/customer/data'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> CustomerDel({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/customer/del'),
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
