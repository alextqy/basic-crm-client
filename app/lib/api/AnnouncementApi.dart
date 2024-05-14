// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class AnnouncementApi extends BaseApi {
  Future<ResultModel> AnnouncementNew({
    required URL,
    required Title,
    required Content,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, "/announcement/new"),
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

  Future<ResultListModel> AnnouncementList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required AuthorID,
    required Display,
  }) async {
    Response response = await post(
      Uri.http(URL, "/announcement/list"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Page": Page.toString(),
        "PageSize": PageSize.toString(),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "AuthorID": AuthorID.toString(),
        "Display": Display.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultListModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AnnouncementAll({
    required URL,
    required Order,
    required Stext,
    required AuthorID,
    required Display,
  }) async {
    Response response = await post(
      Uri.http(URL, "/announcement/all"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "AuthorID": AuthorID.toString(),
        "Display": Display.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AnnouncementData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, "/announcement/data"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AnnouncementDel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, "/announcement/del"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> AnnouncementDisplay({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, "/announcement/display"),
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
