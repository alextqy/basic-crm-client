// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:app/common/File.dart';
import 'package:app/interface/common/PubLib.dart';
import 'package:app/interface/common/Routes.dart';

Drawer ActionMenu(BuildContext Context) {
  dynamic MenuHeader(BuildContext Context) {
    return Container(
      color: Colors.black,
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
                  FileHelper().JsonRead(Key: 'account'),
                  style: TxStyle(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          onTap: () {
            Navigator.of(Context).push(Routes().Generate(Context, '/'));
          },
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
              child: Text(Lang.Exit, style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
          ),
        ],
      ),
      onLongPress: () {},
      onTap: () {},
    );
  }

  return Drawer(
    width: ScreenSize(Context).width > 800 ? ScreenSize(Context).width * 0.2 : ScreenSize(Context).width * 0.45,
    // backgroundColor: Colors.transparent,
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
                title: Text('home', style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
                onTap: () {
                  Navigator.of(Context).push(Routes().Generate(Context, '/'));
                },
              ),
              ListTile(
                horizontalTitleGap: 20,
                leading: Icon(Icons.cloud_upload, size: IconSize, color: WidgetColor),
                title: Text('upload', style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
                onTap: () {
                  Navigator.of(Context).push(Routes().Generate(Context, '/'));
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
