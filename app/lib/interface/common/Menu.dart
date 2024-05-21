// ignore_for_file: non_constant_identifier_names, file_names, avoid_renaming_method_parameters, unused_element, no_leading_underscores_for_local_identifiers

import 'dart:io';

import 'package:app/notifier/AdminNotifier.dart';
import 'package:app/main.dart';
import 'package:app/interface/common/ShowAlertDialog.dart';
import 'package:app/common/Lang.dart';
import 'package:app/common/File.dart';
import 'package:app/interface/common/PubLib.dart';
import 'package:app/interface/common/Routes.dart';
import 'package:flutter/material.dart';

Drawer ActionMenu(BuildContext Context) {
  final AdminNotifier _AdminNotifier = AdminNotifier();

  dynamic MenuHeader(BuildContext Context) {
    return Container(
      color: MainColor,
      height: 50,
      width: double.infinity,
      child: DrawerHeader(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: InkWell(
          child: Row(
            children: [
              const Expanded(child: SizedBox()),
              Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  FileHelper().JsonRead(Key: 'account').toUpperCase(),
                  style: TxStyle(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget MenuFooter(BuildContext Context) {
    return InkWell(
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(5),
              height: 35,
              color: MainColor,
              child: Text(LangHelper().Exit, style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
          ),
        ],
      ),
      onLongPress: () {
        _AdminNotifier.AdminSignOut(URL: FileHelper().JsonRead(Key: 'server')).then((Value) {
          if (Value.State) {
            FileHelper().JsonWrite(Key: 'token', Value: '');
            Navigator.pushAndRemoveUntil(Context, MaterialPageRoute(builder: (Context) => const StartPage()), (route) => false);
          }
        });
      },
      onTap: () {
        _AdminNotifier.AdminSignOut(URL: FileHelper().JsonRead(Key: 'server')).then((Value) {
          if (Value.State) {
            FileHelper().JsonWrite(Key: 'token', Value: '');
            exit(0);
          } else {
            ShowSnackBar(Context, Content: Value.Message, BackgroundColor: MainColor);
          }
        });
      },
    );
  }

  return Drawer(
    width: ScreenSize(Context).width > 800 ? ScreenSize(Context).width * 0.2 : ScreenSize(Context).width * 0.45,
    backgroundColor: Colors.transparent,
    child: Column(
      children: [
        MenuHeader(Context),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              ListTile(
                horizontalTitleGap: 20,
                leading: Icon(Icons.home, size: IconSize, color: WidgetColor),
                title: Text(LangHelper().Home, style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
                onTap: () {
                  Navigator.of(Context).push(Routes().Generate(Context, '/'));
                },
              ),
              ListTile(
                horizontalTitleGap: 20,
                leading: Icon(Icons.admin_panel_settings, size: IconSize, color: WidgetColor),
                title: Text(LangHelper().Admin, style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
                onTap: () {
                  Navigator.of(Context).push(Routes().Generate(Context, '/admin/list'));
                },
              ),
            ],
          ),
        ),
        MenuFooter(Context),
      ],
    ),
  );
}
