// ignore_for_file: non_constant_identifier_names, file_names

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
    Response Resp = await post(
      Uri.http(URL, '/product/new'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ProductName': ProductName.toString(),
        'Price': Price.toString(),
        'Cost': Cost.toString(),
        'Remark': Remark.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultListModel> ProductList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Status,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/product/list'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Status': Status.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJsonList(Resp);
  }

  Future<ResultModel> ProductAll({
    required URL,
    required Order,
    required Stext,
    required Status,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/product/all'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'Status': Status.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> ProductData({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/product/data'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> ProductDel({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/product/del'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }
}
