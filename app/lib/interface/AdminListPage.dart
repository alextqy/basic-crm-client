// ignore_for_file: non_constant_identifier_names, file_names, avoid_renaming_method_parameters, unused_element, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:app/common/Lang.dart';
import 'package:app/interface/common/PubLib.dart';
import 'package:app/interface/common/Menu.dart';

class AdminListPage extends StatefulWidget {
  const AdminListPage({super.key});

  @override
  State<AdminListPage> createState() => _AdminListPage();
}

class _AdminListPage extends State<AdminListPage> {
  @override
  Widget build(BuildContext Context) {
    @override
    void initState() {
      super.initState();
    }

    @override
    void dispose() {
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        backgroundColor: MainColor,
        title: Text(LangHelper().Admin, style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
      endDrawer: ActionMenu(Context),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
