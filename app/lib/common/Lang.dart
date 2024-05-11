// ignore_for_file: non_constant_identifier_names

import "package:app/common/File.dart";

class LangHelper {
  String Type = "";
  String Title = "";

  Lang() {
    Type = FileHelper().JsonRead(key: "lang");
    Title = FileHelper().JsonRead(key: "title");

    if (Type == "cn") {
    } else {}
  }
}
