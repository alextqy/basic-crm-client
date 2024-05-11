// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class ManagerApi extends BaseApi {
  Future<ResultModel> ManagerNew([
    dynamic URL,
    dynamic Account,
    dynamic Password,
    dynamic Name,
    dynamic Remark,
    dynamic GroupID,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/manager/new"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Account": Account.toString(),
        "Password": Password.toString(),
        "Name": Name.toString(),
        "Remark": Remark.toString(),
        "GroupID": GroupID.toString(),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultListModel> ManagerList([
    dynamic URL,
    dynamic Page,
    dynamic PageSize,
    dynamic Order,
    dynamic Stext,
    dynamic Level,
    dynamic Status,
    dynamic GroupID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/manager/list"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Page": Page.toString(),
        "PageSize": PageSize.toString(),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "Level": Level.toString(),
        "Status": Status.toString(),
        "GroupID": GroupID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultListModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> ManagerAll([
    dynamic URL,
    dynamic Order,
    dynamic Stext,
    dynamic Level,
    dynamic Status,
    dynamic GroupID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/manager/all"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "Level": Level.toString(),
        "Status": Status.toString(),
        "GroupID": GroupID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> ManagerData([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/manager/data"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> ManagerDel([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/manager/del"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> ManagerStatus([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/manager/status"),
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
