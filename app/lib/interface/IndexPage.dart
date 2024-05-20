// ignore_for_file: non_constant_identifier_names, file_names, avoid_renaming_method_parameters, unused_element, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:app/interface/common/PubLib.dart';
import 'package:app/interface/common/Menu.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPage();
}

class _IndexPage extends State<IndexPage> {
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        backgroundColor: MainColor,
        title: Text(Lang.Title, style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
      endDrawer: ActionMenu(Context),
      body: const Center(),
    );
  }
}
