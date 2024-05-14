// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class ProductApi extends BaseApi {
  Future<ResultModel> ProductNew({
    required URL,
    required ProductName,
    required Price,
    required Cost,
    required Remark,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/product/new'),
      body: {
        'Token': FileHelper().Read('Token'),
        'ProductName': ProductName.toString(),
        'Price': Price.toString(),
        'Cost': Cost.toString(),
        'Remark': Remark.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultListModel> ProductList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Status,
  }) async {
    Response response = await post(
      Uri.http(URL, '/product/list'),
      body: {
        'Token': FileHelper().Read('Token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Status': Status.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultListModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> ProductAll({
    required URL,
    required Order,
    required Stext,
    required Status,
  }) async {
    Response response = await post(
      Uri.http(URL, '/product/all'),
      body: {
        'Token': FileHelper().Read('Token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Status': Status.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> ProductData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/product/data'),
      body: {
        'Token': FileHelper().Read('Token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return ResultModel.fromJson(jsonDecode(Decoder.convert(response.bodyBytes)));
  }

  Future<ResultModel> ProductDel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/product/del'),
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
