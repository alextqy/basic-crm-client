// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class AfterServiceApi extends BaseApi {
  Future<ResultModel> AfterServiceNew({
    required URL,
    required Account,
    required Password,
    required Name,
    required Remark,
    required ID,
  }) async {
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

  Future<ResultListModel> AfterServiceList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Level,
    required Status,
  }) async {
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

  Future<ResultModel> AfterServiceAll({
    required URL,
    required Order,
    required Stext,
    required Level,
    required Status,
  }) async {
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

  Future<ResultModel> AfterServiceData({
    required URL,
    required ID,
  }) async {
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

  Future<ResultModel> AfterServiceDel({
    required URL,
    required ID,
  }) async {
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

  Future<ResultModel> AfterServiceStatus({
    required URL,
    required ID,
  }) async {
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

  Future<ResultModel> AfterServiceSignIn({
    required URL,
    required Account,
    required Password,
  }) async {
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

  Future<ResultModel> AfterServiceSignOut({
    required URL,
  }) async {
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

  Future<ResultModel> AfterServiceUpdate({
    required URL,
    required Password,
    required Name,
    required Remark,
  }) async {
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
