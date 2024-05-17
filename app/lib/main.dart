// ignore_for_file: non_constant_identifier_names, file_names, avoid_renaming_method_parameters, unused_element, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app/common/File.dart';
import 'package:app/common/Tools.dart';
import 'package:app/interface/common/PubLib.dart';
import 'package:app/notifier/AdminNotifier.dart';
import 'package:app/notifier/ManagerNotifier.dart';
import 'package:app/notifier/AfterServiceNotifier.dart';
import 'package:app/interface/common/ShowAlertDialog.dart';
import 'package:app/model/AdminModel.dart';
import 'package:app/interface/IndexPage.dart';

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
        useMaterial3: false,
        brightness: Brightness.dark,
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
    final AdminNotifier _AdminNotifier = AdminNotifier();
    final ManagerNotifier _ManagerNotifier = ManagerNotifier();
    final AfterServiceNotifier _AfterServiceNotifier = AfterServiceNotifier();
    TextEditingController AccountController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
    TextEditingController NetworkController = TextEditingController();

    AccountController.text = FileHelper().JsonRead(Key: 'account');
    NetworkController.text = FileHelper().JsonRead(Key: 'server');

    AdminListener() async {
      ShowSnackBar(Context, Content: Lang.Loading, BackgroundColor: MainColor, Durn: 1);
      if (_AdminNotifier.OperationStatus == true) {
        ShowSnackBar(Context, Content: Lang.Complete, BackgroundColor: MainColor);
      } else {
        ShowSnackBar(Context, Content: _AdminNotifier.OperationMemo, BackgroundColor: MainColor);
      }
    }

    ManagerListener() async {
      ShowSnackBar(Context, Content: Lang.Loading, BackgroundColor: MainColor, Durn: 1);
      if (_ManagerNotifier.OperationStatus == true) {
        ShowSnackBar(Context, Content: Lang.Complete, BackgroundColor: MainColor);
      } else {
        ShowSnackBar(Context, Content: _ManagerNotifier.OperationMemo, BackgroundColor: MainColor);
      }
    }

    AfterServiceListener() async {
      ShowSnackBar(Context, Content: Lang.Loading, BackgroundColor: MainColor, Durn: 1);
      if (_AfterServiceNotifier.OperationStatus == true) {
        ShowSnackBar(Context, Content: Lang.Complete, BackgroundColor: MainColor);
      } else {
        ShowSnackBar(Context, Content: _AfterServiceNotifier.OperationMemo, BackgroundColor: MainColor);
      }
    }

    SetConf();

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
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(color: MainColor, width: BorderWidth),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(color: BorderColor, width: BorderWidth),
                  ),
                  labelText: Lang.Account,
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
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(color: MainColor, width: BorderWidth),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(color: BorderColor, width: BorderWidth),
                  ),
                  labelText: Lang.Password,
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
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(color: MainColor, width: BorderWidth),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(color: BorderColor, width: BorderWidth),
                      ),
                      labelText: Lang.Network,
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
                          setState(() {
                            NetworkController.text = Value;
                            ShowSnackBar(Context, Content: Lang.Complete, BackgroundColor: MainColor);
                          });
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
                  borderRadius: BorderRadius.circular(5),
                  color: MainColor,
                ),
                child: Text(Lang.LogIn, style: TxStyle()),
              ),
              onTap: () {
                if (NetworkController.text.isNotEmpty) {
                  _AdminNotifier.AdminSignIn(
                    URL: FileHelper().JsonRead(Key: 'server'),
                    Account: AccountController.text,
                    Password: PasswordController.text,
                  ).then((value) {
                    if (value.State) {
                      AdminModel Admin = AdminModel.FromJson(value.Data);
                      FileHelper().JsonWrite(Key: 'account', Value: Admin.Account);
                      FileHelper().JsonWrite(Key: 'token', Value: Admin.Token);
                      Navigator.pushAndRemoveUntil(Context, MaterialPageRoute(builder: (Context) => const IndexPage()), (route) => false);
                    } else {
                      ShowSnackBar(Context, Content: value.Message, BackgroundColor: MainColor);
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
