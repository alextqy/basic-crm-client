// ignore_for_file: non_constant_identifier_names

class ResultListModel {
  bool State = false;
  int Code = 0;
  String Message = '';
  int Page = 0;
  int PageSize = 0;
  int TotalPage = 0;
  dynamic Data;

  ResultListModel({
    this.State = false,
    this.Code = 0,
    this.Message = '',
    this.Page = 0,
    this.PageSize = 0,
    this.TotalPage = 0,
    this.Data = '',
  });

  factory ResultListModel.fromJson(Map<String, dynamic> json) {
    return ResultListModel(
      State: json['State'],
      Code: json['Code'],
      Message: json['Message'],
      Page: json['Page'],
      PageSize: json['PageSize'],
      TotalPage: json['TotalPage'],
      Data: json['Data'],
    );
  }
}
