// ignore_for_file: non_constant_identifier_names

import 'package:app/interface/common/PubLib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        // textTheme: TextTheme(displayLarge: TxStyle()),
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

int? SegmentedControlValue = 0;

class _StartPage extends State<StartPage> {
  Widget SegmentedControl() {
    return SizedBox(
      width: 350,
      child: CupertinoSlidingSegmentedControl(
          groupValue: SegmentedControlValue,
          children: <int, Widget>{
            0: Container(
              padding: const EdgeInsets.all(6),
              child: Text(Lang.Admin, style: TxStyle(fontSize: 13)),
            ),
            1: Container(
              padding: const EdgeInsets.all(6),
              child: Text(Lang.Manager, style: TxStyle(fontSize: 13)),
            ),
            2: Container(
              padding: const EdgeInsets.all(6),
              child: Text(Lang.AfterService, style: TxStyle(fontSize: 13)),
            ),
          },
          onValueChanged: (value) {
            setState(() {
              SegmentedControlValue = value;
            });
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Expanded(child: SizedBox()),
            SegmentedControl(),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
