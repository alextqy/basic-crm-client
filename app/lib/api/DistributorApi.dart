// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class DistributorApi extends BaseApi {
  Future<ResultModel> DistributorNew({
    required URL,
    required Name,
    required Email,
    required Tel,
    required DistributorInfo,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/distributor/new'),
      body: {
        'Token': FileHelper().Read('Token'),
        'Name': Name.toString(),
        'Email': Email.toString(),
        'Tel': Tel.toString(),
        'DistributorInfo': DistributorInfo.toString(),
        'CompanyID': CompanyID.toString(),
        'ManagerID': ManagerID.toString(),
        'AfterServiceID': AfterServiceID.toString(),
        'Level': Level.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultListModel> DistributorList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    Response response = await post(
      Uri.http(URL, '/distributor/list'),
      body: {
        'Token': FileHelper().Read('Token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'CompanyID': CompanyID.toString(),
        'ManagerID': ManagerID.toString(),
        'AfterServiceID': AfterServiceID.toString(),
        'Level': Level.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultListModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> DistributorAll({
    required URL,
    required Order,
    required Stext,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    Response response = await post(
      Uri.http(URL, '/distributor/all'),
      body: {
        'Token': FileHelper().Read('Token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'CompanyID': CompanyID.toString(),
        'ManagerID': ManagerID.toString(),
        'AfterServiceID': AfterServiceID.toString(),
        'Level': Level.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> DistributorData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/distributor/data'),
      body: {
        'Token': FileHelper().Read('Token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> DistributorDel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/distributor/del'),
      body: {
        'Token': FileHelper().Read('Token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }
}
