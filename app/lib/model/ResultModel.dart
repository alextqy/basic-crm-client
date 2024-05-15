// ignore_for_file: non_constant_identifier_names, file_names

class ResultModel {
  bool State;
  int Code;
  String Message;
  dynamic Data;

  ResultModel({
    this.State = false,
    this.Code = 0,
    this.Message = '',
    this.Data = '',
  });

  factory ResultModel.FromJson(Map<String, dynamic> Json) {
    return ResultModel(
      State: Json['State'],
      Code: Json['Code'],
      Message: Json['Message'],
      Data: Json['Data'],
    );
  }
}
