// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class AnnouncementModel {
  int ID;
  String Title;
  String Content;
  int AuthorID;
  int Display;
  int CreationTime;

  AnnouncementModel({
    this.ID = 0,
    this.Title = '',
    this.Content = '',
    this.AuthorID = 0,
    this.Display = 0,
    this.CreationTime = 0,
  });

  factory AnnouncementModel.fromJson(Map<String, dynamic> json) {
    return AnnouncementModel(
      ID: json['ID'],
      Title: json['Title'],
      Content: json['Content'],
      AuthorID: json['AuthorID'],
      Display: json['Display'],
      CreationTime: json['CreationTime'],
    );
  }

  List<AnnouncementModel> fromJsonList(String jsonString) {
    List<AnnouncementModel> dataList = (jsonDecode(jsonString) as List).map((i) => AnnouncementModel.fromJson(i)).toList();
    return dataList;
  }
}
