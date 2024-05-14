// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class SupplierApi extends BaseApi {
  Future<ResultModel> SupplierNew({
    required URL,
    required Name,
    required Email,
    required Tel,
    required Address,
    required SupplierInfo,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/supplier/new'),
      body: {
        'Token': FileHelper().Read('Token'),
        'Name': Name.toString(),
        'Email': Email.toString(),
        'Tel': Tel.toString(),
        'Address': Address.toString(),
        'SupplierInfo': SupplierInfo.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultListModel> SupplierList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
  }) async {
    Response response = await post(
      Uri.http(URL, '/supplier/list'),
      body: {
        'Token': FileHelper().Read('Token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultListModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> SupplierAll({
    required URL,
    required Order,
    required Stext,
  }) async {
    Response response = await post(
      Uri.http(URL, '/supplier/all'),
      body: {
        'Token': FileHelper().Read('Token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> SupplierData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/supplier/data'),
      body: {
        'Token': FileHelper().Read('Token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> SupplierDel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/supplier/del'),
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
