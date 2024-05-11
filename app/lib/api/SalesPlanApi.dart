// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class SalesPlanApi extends BaseApi {
  Future<ResultModel> SalesPlanNew([
    dynamic URL,
    dynamic PlanName,
    dynamic TargetID,
    dynamic PlanContent,
    dynamic Budget,
    dynamic ID,
  ]) async {
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

  Future<ResultListModel> SalesPlanList([
    dynamic URL,
    dynamic Page,
    dynamic PageSize,
    dynamic Order,
    dynamic Stext,
    dynamic TargetID,
    dynamic Status,
    dynamic ManagerID,
  ]) async {
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

  Future<ResultModel> SalesPlanAll([
    dynamic URL,
    dynamic Order,
    dynamic Stext,
    dynamic TargetID,
    dynamic Status,
    dynamic ManagerID,
  ]) async {
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

  Future<ResultModel> SalesPlanData([
    dynamic URL,
    dynamic ID,
  ]) async {
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

  Future<ResultModel> SalesPlanDel([
    dynamic URL,
    dynamic ID,
  ]) async {
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
