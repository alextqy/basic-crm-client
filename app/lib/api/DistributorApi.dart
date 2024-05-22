// ignore_for_file: non_constant_identifier_names, file_names

import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class DistributorApi extends BaseApi {
  Future<ResultModel> DistributorNew({
    required URL,
    required Name,
    required Email,
    required Tel,
    required DistributorInfo,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/distributor/new'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Name': Name.toString(),
        'Email': Email.toString(),
        'Tel': Tel.toString(),
        'DistributorInfo': DistributorInfo.toString(),
        'CompanyID': CompanyID.toString(),
        'ManagerID': ManagerID.toString(),
        'AfterServiceID': AfterServiceID.toString(),
        'Level': Level.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultListModel> DistributorList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/distributor/list'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'CompanyID': CompanyID.toString(),
        'ManagerID': ManagerID.toString(),
        'AfterServiceID': AfterServiceID.toString(),
        'Level': Level.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJsonList(Resp);
  }

  Future<ResultModel> DistributorAll({
    required URL,
    required Order,
    required Stext,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/distributor/all'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
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

  Future<ResultModel> DistributorData({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/distributor/data'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> DistributorDel({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/distributor/del'),
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
