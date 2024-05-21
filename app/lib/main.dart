// ignore_for_file: non_constant_identifier_names, file_names, avoid_renaming_method_parameters, unused_element, no_leading_underscores_for_local_identifiers

import 'package:app/interface/IndexPage.dart';
import 'package:app/model/AdminModel.dart';
import 'package:app/interface/common/ShowAlertDialog.dart';
import 'package:app/notifier/ManagerNotifier.dart';
import 'package:app/notifier/AfterServiceNotifier.dart';
import 'package:app/notifier/AdminNotifier.dart';
import 'package:app/interface/common/PubLib.dart';
import 'package:app/common/File.dart';
import 'package:app/common/Tools.dart';
import 'package:app/common/Lang.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.transparent,
          brightness: Brightness.dark,
          background: Colors.black,
        ),
        textTheme: TextTheme(
          titleLarge: TxStyle(),
          displayLarge: TxStyle(),
        ),
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
  int SegmentedControlValue = 0;

  Widget SegmentedControl() {
    return SizedBox(
      width: 350,
      child: CupertinoSlidingSegmentedControl(
        groupValue: SegmentedControlValue,
        thumbColor: MainColor,
        children: <int, Widget>{
          0: Container(padding: const EdgeInsets.all(6), child: Text(LangHelper().Admin, style: TxStyle(FontSize: 13))),
          1: Container(padding: const EdgeInsets.all(6), child: Text(LangHelper().Manager, style: TxStyle(FontSize: 13))),
          2: Container(padding: const EdgeInsets.all(6), child: Text(LangHelper().AfterService, style: TxStyle(FontSize: 13))),
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
    final AdminNotifier _AdminNotifier = AdminNotifier();
    final ManagerNotifier _ManagerNotifier = ManagerNotifier();
    final AfterServiceNotifier _AfterServiceNotifier = AfterServiceNotifier();
    TextEditingController AccountController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
    TextEditingController NetworkController = TextEditingController();

    AccountController.text = FileHelper().JsonRead(Key: 'account');
    NetworkController.text = FileHelper().JsonRead(Key: 'server');

    AdminListener() async {
      ShowSnackBar(Context, Content: LangHelper().Loading, BackgroundColor: MainColor, Durn: 1);
      if (_AdminNotifier.OperationStatus == true) {
        ShowSnackBar(Context, Content: LangHelper().Complete, BackgroundColor: MainColor);
      } else {
        ShowSnackBar(Context, Content: _AdminNotifier.OperationMemo, BackgroundColor: MainColor);
      }
    }

    ManagerListener() async {
      ShowSnackBar(Context, Content: LangHelper().Loading, BackgroundColor: MainColor, Durn: 1);
      if (_ManagerNotifier.OperationStatus == true) {
        ShowSnackBar(Context, Content: LangHelper().Complete, BackgroundColor: MainColor);
      } else {
        ShowSnackBar(Context, Content: _ManagerNotifier.OperationMemo, BackgroundColor: MainColor);
      }
    }

    AfterServiceListener() async {
      ShowSnackBar(Context, Content: LangHelper().Loading, BackgroundColor: MainColor, Durn: 1);
      if (_AfterServiceNotifier.OperationStatus == true) {
        ShowSnackBar(Context, Content: LangHelper().Complete, BackgroundColor: MainColor);
      } else {
        ShowSnackBar(Context, Content: _AfterServiceNotifier.OperationMemo, BackgroundColor: MainColor);
      }
    }

    SetConf();

    @override
    void initState() {
      super.initState();
    }

    @override
    void dispose() {
      super.dispose();
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 350,
              padding: const EdgeInsets.all(0),
              child: TextField(
                controller: AccountController,
                cursorColor: BorderColor,
                style: TxStyle(),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(BorderCircular)),
                    borderSide: BorderSide(color: MainColor, width: BorderWidth),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(BorderCircular)),
                    borderSide: BorderSide(color: BorderColor, width: BorderWidth),
                  ),
                  labelText: LangHelper().Account,
                  labelStyle: TxStyle(),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 50,
              width: 350,
              padding: const EdgeInsets.all(0),
              child: TextField(
                controller: PasswordController,
                cursorColor: BorderColor,
                style: TxStyle(),
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(BorderCircular)),
                    borderSide: BorderSide(color: MainColor, width: BorderWidth),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(BorderCircular)),
                    borderSide: BorderSide(color: BorderColor, width: BorderWidth),
                  ),
                  labelText: LangHelper().Password,
                  labelStyle: TxStyle(),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 300,
                  padding: const EdgeInsets.all(0),
                  child: TextField(
                    controller: NetworkController,
                    cursorColor: BorderColor,
                    style: TxStyle(),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(BorderCircular)),
                        borderSide: BorderSide(color: MainColor, width: BorderWidth),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(BorderCircular)),
                        borderSide: BorderSide(color: BorderColor, width: BorderWidth),
                      ),
                      labelText: LangHelper().Network,
                      labelStyle: TxStyle(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SetIconButton(
                  I: Icon(Icons.network_check, size: IconSize, color: WidgetColor),
                  F: () {
                    ToolsHelper().ClentUDP(int.parse(FileHelper().JsonRead(Key: 'broadcast'))).then((Value) {
                      if (Value.isNotEmpty) {
                        if (FileHelper().JsonWrite(Key: 'server', Value: Value)) {
                          NetworkController.text = Value;
                          ShowSnackBar(Context, Content: LangHelper().Complete, BackgroundColor: MainColor);
                        }
                      }
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 15),
            SegmentedControl(),
            const SizedBox(height: 15),
            InkWell(
              child: Container(
                height: 35,
                width: 350,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(BorderCircular),
                  color: MainColor,
                ),
                child: Text(LangHelper().Login, style: TxStyle()),
              ),
              onTap: () {
                if (NetworkController.text.isNotEmpty) {
                  _AdminNotifier.AdminSignIn(
                    URL: FileHelper().JsonRead(Key: 'server'),
                    Account: AccountController.text,
                    Password: PasswordController.text,
                  ).then((Value) {
                    if (Value.State) {
                      AdminModel Admin = AdminModel.FromJson(Value.Data);
                      FileHelper().JsonWrite(Key: 'account', Value: Admin.Account);
                      FileHelper().JsonWrite(Key: 'token', Value: Admin.Token);
                      Navigator.pushAndRemoveUntil(Context, MaterialPageRoute(builder: (Context) => const IndexPage()), (route) => false);
                    } else {
                      ShowSnackBar(Context, Content: Value.Message, BackgroundColor: MainColor);
                    }
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
