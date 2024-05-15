// ignore_for_file: non_constant_identifier_names, file_names

import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class SalesPlanApi extends BaseApi {
  Future<ResultModel> SalesPlanNew({
    required URL,
    required PlanName,
    required TargetID,
    required PlanContent,
    required Budget,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/sales/plan/new'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'PlanName': PlanName.toString(),
        'TargetID': TargetID.toString(),
        'PlanContent': PlanContent.toString(),
        'Budget': Budget.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultListModel> SalesPlanList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required TargetID,
    required Status,
    required ManagerID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/sales/plan/list'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'TargetID': TargetID.toString(),
        'Status': Status.toString(),
        'ManagerID': ManagerID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> SalesPlanAll({
    required URL,
    required Order,
    required Stext,
    required TargetID,
    required Status,
    required ManagerID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/sales/plan/all'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'TargetID': TargetID.toString(),
        'Status': Status.toString(),
        'ManagerID': ManagerID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> SalesPlanData({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/sales/plan/data'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'Token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> SalesPlanDel({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/sales/plan/del'),
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
