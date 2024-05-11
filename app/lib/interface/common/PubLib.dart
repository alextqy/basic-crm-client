// ignore_for_file: non_constant_identifier_names, must_be_immutable

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:file_selector/file_selector.dart";
import "package:app/common/File.dart";

double ToolbarHeight = 37;
String AppTitle = FileHelper().JsonRead(key: "title");

int ShowSpeed = 450;
double IconSize = 20;
Color IconColor = Colors.white70;

BoxDecoration TooltipStyle() {
  return const BoxDecoration(borderRadius: BorderRadius.all(Radius.elliptical(10, 10)), color: Colors.black);
}

TextStyle TxStyle({Color color = Colors.white70, double fontSize = 15}) {
  return TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: fontSize, textBaseline: TextBaseline.alphabetic);
}

Color BgColor(BuildContext context) {
  return Theme.of(context).colorScheme.inversePrimary;
}

Size ScreenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

void Copy(String param) {
  Clipboard.setData(ClipboardData(text: param));
}

Future<ClipboardData?> Paste() {
  return Clipboard.getData(Clipboard.kTextPlain);
}

Future<List<XFile>> FileSelector(List<String> xFType) async {
  XTypeGroup xType = XTypeGroup(label: "", extensions: xFType);
  return await openFiles(acceptedTypeGroups: [xType]);
}
