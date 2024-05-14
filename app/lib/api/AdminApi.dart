// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class AdminApi extends BaseApi {
  Future<ResultModel> AdminSignIn({
    required URL,
    required Account,
    required Password,
  }) async {
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

  Future<ResultModel> AdminSignOut({
    required URL,
  }) async {
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

  Future<ResultModel> AdminNew({
    required URL,
    required Account,
    required Password,
    required Name,
    required Remark,
    required ID,
  }) async {
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

  Future<ResultListModel> AdminList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Level,
    required Status,
  }) async {
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

  Future<ResultModel> AdminAll({
    required URL,
    required Order,
    required Stext,
    required Level,
    required Status,
  }) async {
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

  Future<ResultModel> AdminData({
    required URL,
    required ID,
  }) async {
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

  Future<ResultModel> AdminDel({
    required URL,
    required ID,
  }) async {
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

  Future<ResultModel> AdminStatus({
    required URL,
    required ID,
  }) async {
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
