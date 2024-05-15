// ignore_for_file: non_constant_identifier_names, avoid_renaming_method_parameters

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app/interface/common/PubLib.dart';
import 'package:app/notifier/AdminNotifier.dart';
import 'package:app/notifier/ManagerNotifier.dart';
import 'package:app/notifier/AfterServiceNotifier.dart';
import 'package:app/interface/common/ShowAlertDialog.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        textTheme: TextTheme(displayLarge: TxStyle()),
      ),
      home: const StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
  final AdminNotifier _AdminNotifier = AdminNotifier();
  final ManagerNotifier _ManagerNotifier = ManagerNotifier();
  final AfterServiceNotifier _AfterServiceNotifier = AfterServiceNotifier();
  int SegmentedControlValue = 0;

  AdminListener() async {
    ShowSnackBar(context, Content: Lang.Loading, BackgroundColor: BgColor(context), Durn: 1);
    if (_AdminNotifier.OperationStatus == true) {
      ShowSnackBar(context, Content: Lang.Complete, BackgroundColor: BgColor(context));
    } else {
      ShowSnackBar(context, Content: _AdminNotifier.OperationMemo, BackgroundColor: BgColor(context));
    }
  }

  ManagerListener() async {
    ShowSnackBar(context, Content: Lang.Loading, BackgroundColor: BgColor(context), Durn: 1);
    if (_ManagerNotifier.OperationStatus == true) {
      ShowSnackBar(context, Content: Lang.Complete, BackgroundColor: BgColor(context));
    } else {
      ShowSnackBar(context, Content: _ManagerNotifier.OperationMemo, BackgroundColor: BgColor(context));
    }
  }

  AfterServiceListener() async {
    ShowSnackBar(context, Content: Lang.Loading, BackgroundColor: BgColor(context), Durn: 1);
    if (_AfterServiceNotifier.OperationStatus == true) {
      ShowSnackBar(context, Content: Lang.Complete, BackgroundColor: BgColor(context));
    } else {
      ShowSnackBar(context, Content: _AfterServiceNotifier.OperationMemo, BackgroundColor: BgColor(context));
    }
  }

  Widget SegmentedControl() {
    return SizedBox(
      width: 350,
      child: CupertinoSlidingSegmentedControl(
        groupValue: SegmentedControlValue,
        children: <int, Widget>{
          0: Container(padding: const EdgeInsets.all(6), child: Text(Lang.Admin, style: TxStyle(FontSize: 13))),
          1: Container(padding: const EdgeInsets.all(6), child: Text(Lang.Manager, style: TxStyle(FontSize: 13))),
          2: Container(padding: const EdgeInsets.all(6), child: Text(Lang.AfterService, style: TxStyle(FontSize: 13))),
        },
        onValueChanged: (Value) {
          setState(() {
            SegmentedControlValue = Value!;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext Context) {
    SetConf();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Expanded(child: SizedBox()),
            SegmentedControl(),
            // const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
