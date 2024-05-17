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
      '{"server": "", "broadcast": 8001, "lang": "en", "title": "BASIC CRM", "account": "", "level": 0, "token": ""}',
    );
  }
}

LangHelper Lang = LangHelper();
double ToolbarHeight = 37;
String AppTitle = FileHelper().JsonRead(Key: 'title');

Color MainColor = Colors.white30;
Color WidgetColor = Colors.white70;
Color BorderColor = Colors.white54;
double BorderWidth = 2.5;
double IconSize = 25;

Color ThemeColor(BuildContext Context) {
  return Theme.of(Context).colorScheme.inversePrimary;
}

Size ScreenSize(BuildContext Context) {
  return MediaQuery.of(Context).size;
}

TextStyle TxStyle({Color Color = Colors.white70, double FontSize = 15}) {
  return TextStyle(fontWeight: FontWeight.bold, color: Color, fontSize: FontSize, textBaseline: TextBaseline.alphabetic);
}

BoxDecoration TooltipStyle() {
  return const BoxDecoration(borderRadius: BorderRadius.all(Radius.elliptical(10, 10)), color: Colors.black);
}

void Copy(String Param) {
  Clipboard.setData(ClipboardData(text: Param));
}

Future<ClipboardData?> Paste() {
  return Clipboard.getData(Clipboard.kTextPlain);
}

Future<List<XFile>> FileSelector(List<String> XFType) async {
  XTypeGroup XType = XTypeGroup(label: '', extensions: XFType);
  return await openFiles(acceptedTypeGroups: [XType]);
}

IconButton SetIconButton({required Icon I, required void Function()? F}) {
  return IconButton(
    icon: I,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    onPressed: F,
  );
}

Widget SetTextField({
  bool Enabled = true,
  String HintText = '',
  TextStyle HintStyle = const TextStyle(),
  String LabelText = '',
  TextStyle LabelStyle = const TextStyle(),
  String HelperText = '',
  TextStyle HelperStyle = const TextStyle(),
  String ErrorText = '',
  TextStyle ErrorStyle = const TextStyle(),
  String PrefixText = '',
  TextStyle PrefixStyle = const TextStyle(),
  String SuffixText = '',
  TextStyle SuffixStyle = const TextStyle(),
  String CounterText = '',
  TextStyle CounterStyle = const TextStyle(),
}) {
  return TextField(
    /// 可编辑
    enabled: Enabled,

    /// 整体样式
    decoration: InputDecoration(
      /// 输入框内提示
      hintText: HintText,
      hintStyle: HintStyle,

      /// 输入框边框提示
      labelText: LabelText,
      labelStyle: LabelStyle,

      /// 输入框底部提示
      helperText: HelperText,
      helperStyle: HelperStyle,

      /// 输入框底部提示 会覆盖helperText信息
      errorText: ErrorText,
      errorStyle: ErrorStyle,

      /// 输入框获取焦点后的左侧提示
      prefixText: PrefixText,
      prefixStyle: PrefixStyle,

      /// 输入框获取焦点后的右侧提示
      suffixText: SuffixText,
      suffixStyle: SuffixStyle,

      /// 输入框右下角提示 多用于计数器
      counterText: CounterText,
      counterStyle: CounterStyle,

      /// 输入框左侧图标
      // prefixIcon: Icon(Icons.phone, size: 20, color: Colors.white),

      /// 输入框右侧图标
      // suffixIcon: Icon(Icons.close, size: 20, color: Colors.white),

      /// 初始边框
      /// InputBorder.none 无下划线
      /// OutlineInputBorder 上下左右 都有边框
      /// UnderlineInputBorder 只有下边框  默认使用的就是下边框
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(0)), // 圆角角度
      //   borderSide: BorderSide(color: Colors.transparent, width: 0.0),
      // ),

      /// 输入边框
      // enabledBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(0)), // 圆角角度
      //   borderSide: BorderSide(color: Colors.transparent, width: 0.0),
      // ),

      /// 失焦边框
      // disabledBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(0)), // 圆角角度
      //   borderSide: BorderSide(color: Colors.transparent, width: 0.0),
      // ),

      /// 焦点边框
      // focusedBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(0)), // 圆角角度
      //   borderSide: BorderSide(color: Colors.transparent, width: 0.0),
      // ),
    ),
  );
}
