// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class CustomerApi extends BaseApi {
  Future<ResultModel> CustomerNew([
    dynamic URL,
    dynamic Name,
    dynamic Birthday,
    dynamic Gender,
    dynamic Email,
    dynamic Tel,
    dynamic CustomerInfo,
    dynamic Priority,
    dynamic CompanyID,
    dynamic AfterServiceID,
    dynamic Level,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/customer/new"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Name": Name.toString(),
        "Birthday": Birthday.toString(),
        "Gender": Gender.toString(),
        "Email": Email.toString(),
        "Tel": Tel.toString(),
        "CustomerInfo": CustomerInfo.toString(),
        "Priority": Priority.toString(),
        "CompanyID": CompanyID.toString(),
        "AfterServiceID": AfterServiceID.toString(),
        "Level": Level.toString(),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultListModel> CustomerList([
    dynamic URL,
    dynamic Page,
    dynamic PageSize,
    dynamic Order,
    dynamic Stext,
    dynamic Gender,
    dynamic Priority,
    dynamic CompanyID,
    dynamic ManagerID,
    dynamic AfterServiceID,
    dynamic Level,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/customer/list"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Page": Page.toString(),
        "PageSize": PageSize.toString(),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "Gender": Gender.toString(),
        "Priority": Priority.toString(),
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

  Future<ResultModel> CustomerAll([
    dynamic URL,
    dynamic Order,
    dynamic Stext,
    dynamic Gender,
    dynamic Priority,
    dynamic CompanyID,
    dynamic ManagerID,
    dynamic AfterServiceID,
    dynamic Level,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/customer/all"),
      body: {
        "Token": FileHelper().Read("Token"),
        "Order": Order.toString(),
        "Stext": Stext.toString(),
        "Gender": Gender.toString(),
        "Priority": Priority.toString(),
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

  Future<ResultModel> CustomerData([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/customer/data"),
      body: {
        "Token": FileHelper().Read("Token"),
        "ID": ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> CustomerDel([
    dynamic URL,
    dynamic ID,
  ]) async {
    Response response = await post(
      Uri.http(URL, "/customer/del"),
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
