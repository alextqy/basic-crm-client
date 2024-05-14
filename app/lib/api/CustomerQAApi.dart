// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class CustomerQAApi extends BaseApi {
  Future<ResultModel> CustomerQANew({
    required URL,
    required Title,
    required Content,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, "/customer/qa/new"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Title": Title.toString(),
        "Content": Content.toString(),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultListModel> CustomerQAList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Display,
  }) async {
    Response response = await post(
      Uri.http(URL, "/customer/qa/list"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Page": Page.toString(),
        "PageSize": PageSize.toString(),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "Display": Display.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultListModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> CustomerQAAll({
    required URL,
    required Order,
    required Stext,
    required Display,
  }) async {
    Response response = await post(
      Uri.http(URL, "/customer/qa/all"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "Display": Display.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> CustomerQAData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, "/customer/qa/data"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> CustomerQADel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, "/customer/qa/del"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> CustomerQADisplay({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, "/customer/qa/display"),
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
