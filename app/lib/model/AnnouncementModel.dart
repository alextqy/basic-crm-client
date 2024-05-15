// ignore_for_file: non_constant_identifier_names, file_names

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

  factory AnnouncementModel.FromJson(Map<String, dynamic> Json) {
    return AnnouncementModel(
      ID: Json['ID'],
      Title: Json['Title'],
      Content: Json['Content'],
      AuthorID: Json['AuthorID'],
      Display: Json['Display'],
      CreationTime: Json['CreationTime'],
    );
  }

  List<AnnouncementModel> FromJsonList(String JsonString) {
    return (jsonDecode(JsonString) as List).map((i) => AnnouncementModel.FromJson(i)).toList();
  }
}
