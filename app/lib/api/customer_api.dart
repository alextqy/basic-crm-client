// ignore_for_file: non_constant_identifier_names

import 'package:http/http.dart';
import 'package:app/api/base_api.dart';
import 'package:app/common/file_helper.dart';
import 'package:app/model/result_model.dart';
import 'package:app/model/result_list_model.dart';

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
    Response response = await post(
      Uri.http(URL, '/customer/new'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
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
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
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
    Response response = await post(
      Uri.http(URL, '/customer/list'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
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
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJsonList(response);
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
    Response response = await post(
      Uri.http(URL, '/customer/all'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Gender': Gender.toString(),
        'Priority': Priority.toString(),
        'CompanyID': CompanyID.toString(),
        'ManagerID': ManagerID.toString(),
        'AfterServiceID': AfterServiceID.toString(),
        'Level': Level.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> CustomerData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/customer/data'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> CustomerDel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/customer/del'),
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
