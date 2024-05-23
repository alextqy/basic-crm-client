// ignore_for_file: non_constant_identifier_names

import 'package:http/http.dart';
import 'package:app/api/base_api.dart';
import 'package:app/common/file_helper.dart';
import 'package:app/model/result_model.dart';
import 'package:app/model/result_list_model.dart';

class AnnouncementApi extends BaseApi {
  Future<ResultModel> AnnouncementNew({
    required URL,
    required Title,
    required Content,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/announcement/new'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Title': Title.toString(),
        'Content': Content.toString(),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
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
      Uri.http(URL, '/announcement/list'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'AuthorID': AuthorID.toString(),
        'Display': Display.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJsonList(response);
  }

  Future<ResultModel> AnnouncementAll({
    required URL,
    required Order,
    required Stext,
    required AuthorID,
    required Display,
  }) async {
    Response response = await post(
      Uri.http(URL, '/announcement/all'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'AuthorID': AuthorID.toString(),
        'Display': Display.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> AnnouncementData({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/announcement/data'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> AnnouncementDel({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/announcement/del'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }

  Future<ResultModel> AnnouncementDisplay({
    required URL,
    required ID,
  }) async {
    Response response = await post(
      Uri.http(URL, '/announcement/display'),
      body: {
        'Token': FileHelper().jsonRead(key: 'token'),
        'ID': ID.toString(),
      },
      headers: postHeaders,
      encoding: postEncoding,
    ).timeout(Duration(seconds: timeout));
    return DeJson(response);
  }
}
