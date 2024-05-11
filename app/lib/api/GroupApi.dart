// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class GroupApi extends BaseApi {
  Future<ResultModel> GroupNew([
    dynamic URL,
    dynamic GroupName,
    dynamic Remark,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/group/new"),
      body: {
        "Token": FileHelper().Read("Token"),
        "GroupName": GroupName.toString(),
        "Remark": Remark.toString(),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultListModel> GroupList([
    dynamic URL,
    dynamic Page,
    dynamic PageSize,
    dynamic Order,
    dynamic Stext,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/group/list"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Page": Page.toString(),
        "PageSize": PageSize.toString(),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultListModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> GroupAll([
    dynamic URL,
    dynamic Order,
    dynamic Stext,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/group/all"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> GroupData([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/group/data"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> GroupDel([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/group/del"),
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
