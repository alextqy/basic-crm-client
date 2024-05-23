import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:file_selector/file_selector.dart';
import 'package:app/common/file_helper.dart';

void setConf() {
  if (!FileHelper().exists('config.json')) {
    FileHelper().write(
      'config.json',
      '{"server": "", "broadcast": 8001, "lang": "en", "title": "BASIC CRM", "account": "", "level": 0, "token": ""}',
    );
  }
}

double toolbarHeight = 37;
String appTitle = FileHelper().jsonRead(key: 'title');

Color mainColor = Colors.white30;
Color widgetColor = Colors.white70;
Color borderColor = Colors.white54;
double borderCircular = 5;
double borderWidth = 2.5;
double iconSize = 25;

Color themeColor(BuildContext context) {
  return Theme.of(context).colorScheme.inversePrimary;
}

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

TextStyle textStyle({Color color = Colors.white70, double fontSize = 15}) {
  return TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: fontSize, textBaseline: TextBaseline.alphabetic);
}

BoxDecoration tooltipStyle() {
  return const BoxDecoration(borderRadius: BorderRadius.all(Radius.elliptical(10, 10)), color: Colors.black);
}

void copy(String param) {
  Clipboard.setData(ClipboardData(text: param));
}

Future<ClipboardData?> paste() {
  return Clipboard.getData(Clipboard.kTextPlain);
}

Future<List<XFile>> fileSelector(List<String> xFType) async {
  return await openFiles(acceptedTypeGroups: [XTypeGroup(label: '', extensions: xFType)]);
}

IconButton setIconButton({required Icon icon, required void Function()? function}) {
  return IconButton(
    icon: icon,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    onPressed: function,
  );
}

/*
TextField setTextField({
  required TextEditingController Controller,
  bool Enabled = true,
  TextStyle Style = const TextStyle(),
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
  Icon PrefixIcon = const Icon(null, size: 0),
  Icon SuffixIcon = const Icon(null, size: 0),
  double borderCircular = 0,
  double borderWidth = 0,
  Color borderColor = Colors.transparent,
  double EnabledCircular = 0,
  double EnabledWidth = 0,
  Color EnabledColor = Colors.transparent,
  double DisabledCircular = 0,
  double DisabledWidth = 0,
  Color DisabledColor = Colors.transparent,
  double FocusedCircular = 0,
  double FocusedWidth = 0,
  Color FocusedColor = Colors.transparent,
}) {
  return TextField(
    /// 控制器
    controller: Controller,

    /// 可编辑
    enabled: Enabled,

    /// 输入字体
    style: Style,

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
      prefixIcon: PrefixIcon,

      /// 输入框右侧图标
      suffixIcon: SuffixIcon,

      /// 初始边框
      /// InputBorder.none 无下划线
      /// UnderlineInputBorder 只有下边框  默认使用的就是下边框
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(borderCircular)), // 圆角角度
        borderSide: BorderSide(width: borderWidth, color: borderColor),
      ),

      /// 输入边框
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(EnabledCircular)), // 圆角角度
        borderSide: BorderSide(width: EnabledWidth, color: EnabledColor),
      ),

      /// 失焦边框
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(DisabledCircular)), // 圆角角度
        borderSide: BorderSide(width: DisabledWidth, color: DisabledColor),
      ),

      /// 焦点边框
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(FocusedCircular)), // 圆角角度
        borderSide: BorderSide(width: FocusedWidth, color: FocusedColor),
      ),
    ),
  );
}
*/