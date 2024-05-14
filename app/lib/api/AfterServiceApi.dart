// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class AfterServiceApi extends BaseApi {
  Future<ResultModel> AfterServiceNew([
    dynamic URL,
    dynamic Account,
    dynamic Password,
    dynamic Name,
    dynamic Remark,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/after/service/new"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Account": Account.toString(),
        "Password": Password.toString(),
        "Name": Name.toString(),
        "Remark": Remark.toString(),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultListModel> AfterServiceList([
    dynamic URL,
    dynamic Page,
    dynamic PageSize,
    dynamic Order,
    dynamic Stext,
    dynamic Level,
    dynamic Status,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/after/service/list"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Page": Page.toString(),
        "PageSize": PageSize.toString(),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "Level": Level.toString(),
        "Status": Status.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultListModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AfterServiceAll([
    dynamic URL,
    dynamic Order,
    dynamic Stext,
    dynamic Level,
    dynamic Status,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/after/service/all"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "Level": Level.toString(),
        "Status": Status.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AfterServiceData([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/after/service/data"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AfterServiceDel([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/after/service/del"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AfterServiceStatus([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/after/service/status"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AfterServiceSignIn([
    dynamic URL,
    dynamic Account,
    dynamic Password,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/after/service/sign/in"),
      body: {
        "Account": Account.toString(),
        "Password": Password.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AfterServiceSignOut([
    dynamic URL,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/after/service/sign/out"),
      body: {
        "Token": FileHelper().Read("Token"),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AfterServiceUpdate([
    dynamic URL,
    dynamic Password,
    dynamic Name,
    dynamic Remark,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/after/service/update"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Password": Password.toString(),
        "Name": Name.toString(),
        "Remark": Remark.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }
}
