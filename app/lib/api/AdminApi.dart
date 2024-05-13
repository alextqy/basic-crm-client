// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class AdminApi extends BaseApi {
  Future<ResultModel> AdminSignIn([
    dynamic URL,
    dynamic Account,
    dynamic Password,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/admin/sign/in"),
      body: {
        "Account": Account.toString(),
        "Password": Password.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AdminSignOut([
    dynamic URL,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/admin/sign/out"),
      body: {
        "Token": FileHelper().Read("Token"),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AdminNew([
    dynamic URL,
    dynamic Account,
    dynamic Password,
    dynamic Name,
    dynamic Remark,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/admin/new"),
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

  Future<ResultListModel> AdminList([
    dynamic URL,
    dynamic Page,
    dynamic PageSize,
    dynamic Order,
    dynamic Stext,
    dynamic Level,
    dynamic Status,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/admin/list"),
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

  Future<ResultModel> AdminAll([
    dynamic URL,
    dynamic Order,
    dynamic Stext,
    dynamic Level,
    dynamic Status,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/admin/all"),
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

  Future<ResultModel> AdminData([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/admin/data"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AdminDel([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/admin/del"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AdminStatus([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/admin/status"),
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
