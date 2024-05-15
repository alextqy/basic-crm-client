// ignore_for_file: non_constant_identifier_names, file_names

import 'package:app/common/Lang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:file_selector/file_selector.dart';
import 'package:app/common/File.dart';

void SetConf() {
  if (!FileHelper().Exists('config.json')) {
    FileHelper().Write(
      'config.json',
      '{"server": "", "broadcast": 8181, "lang": "en", "title": "BASIC CRM", "account": "", "level": 0, "Token": ""}',
    );
  }
}

LangHelper Lang = LangHelper();
double ToolbarHeight = 37;
String AppTitle = FileHelper().JsonRead(Key: 'title');

int ShowSpeed = 450;
double IconSize = 20;
Color IconColor = Colors.white70;

BoxDecoration TooltipStyle() {
  return const BoxDecoration(borderRadius: BorderRadius.all(Radius.elliptical(10, 10)), color: Colors.black);
}

TextStyle TxStyle({Color Color = Colors.white70, double FontSize = 15}) {
  return TextStyle(fontWeight: FontWeight.bold, color: Color, fontSize: FontSize, textBaseline: TextBaseline.alphabetic);
}

Color BgColor(BuildContext Context) {
  return Theme.of(Context).colorScheme.inversePrimary;
}

Size ScreenSize(BuildContext Context) {
  return MediaQuery.of(Context).size;
}

void Copy(String Param) {
  Clipboard.setData(ClipboardData(text: Param));
}

Future<ClipboardData?> Paste() {
  return Clipboard.getData(Clipboard.kTextPlain);
}

Future<List<XFile>> FileSelector(List<String> xFType) async {
  XTypeGroup xType = XTypeGroup(label: '', extensions: xFType);
  return await openFiles(acceptedTypeGroups: [xType]);
}
