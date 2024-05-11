// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class DistributorApi extends BaseApi {
  Future<ResultModel> DistributorNew([
    dynamic URL,
    dynamic Name,
    dynamic Email,
    dynamic Tel,
    dynamic DistributorInfo,
    dynamic CompanyID,
    dynamic ManagerID,
    dynamic AfterServiceID,
    dynamic Level,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/distributor/new"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Name": Name.toString(),
        "Email": Email.toString(),
        "Tel": Tel.toString(),
        "DistributorInfo": DistributorInfo.toString(),
        "CompanyID": CompanyID.toString(),
        "ManagerID": ManagerID.toString(),
        "AfterServiceID": AfterServiceID.toString(),
        "Level": Level.toString(),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultListModel> DistributorList([
    dynamic URL,
    dynamic Page,
    dynamic PageSize,
    dynamic Order,
    dynamic Stext,
    dynamic CompanyID,
    dynamic ManagerID,
    dynamic AfterServiceID,
    dynamic Level,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/distributor/list"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Page": Page.toString(),
        "PageSize": PageSize.toString(),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "CompanyID": CompanyID.toString(),
        "ManagerID": ManagerID.toString(),
        "AfterServiceID": AfterServiceID.toString(),
        "Level": Level.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultListModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> DistributorAll([
    dynamic URL,
    dynamic Order,
    dynamic Stext,
    dynamic CompanyID,
    dynamic ManagerID,
    dynamic AfterServiceID,
    dynamic Level,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/distributor/all"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "CompanyID": CompanyID.toString(),
        "ManagerID": ManagerID.toString(),
        "AfterServiceID": AfterServiceID.toString(),
        "Level": Level.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> DistributorData([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/distributor/data"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> DistributorDel([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/distributor/del"),
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
