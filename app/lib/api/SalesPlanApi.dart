// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
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
    Response response = await post(
      Uri.http(URL, "/sales/plan/new"),
      body: {
        "Token": FileHelper().Read("Token"),
        "PlanName": PlanName.toString(),
        "TargetID": TargetID.toString(),
        "PlanContent": PlanContent.toString(),
        "Budget": Budget.toString(),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
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
    Response response = await post(
      Uri.http(URL, "/sales/plan/list"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Page": Page.toString(),
        "PageSize": PageSize.toString(),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "TargetID": TargetID.toString(),
        "Status": Status.toString(),
        "ManagerID": ManagerID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultListModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> SalesPlanAll({
    required URL,
    required Order,
    required Stext,
    required TargetID,
    required Status,
    required ManagerID,
  }) async {
    Response response = await post(
      Uri.http(URL, "/sales/plan/all"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "TargetID": TargetID.toString(),
        "Status": Status.toString(),
        "ManagerID": ManagerID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> SalesPlanData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, "/sales/plan/data"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> SalesPlanDel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, "/sales/plan/del"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }
}
