// ignore_for_file: non_constant_identifier_names

class ResultModel {
  bool State;
  int Code;
  String Message;
  dynamic Data;

  ResultModel({
    this.State = false,
    this.Code = 0,
    this.Message = "",
    this.Data = "",
  });

  factory ResultModel.fromJson(Map<String, dynamic> json) {
    return ResultModel(
      State: json["State"],
      Code: json["Code"],
      Message: json["Message"],
      Data: json["Data"],
    );
  }
}
