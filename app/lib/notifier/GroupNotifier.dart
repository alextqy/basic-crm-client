// ignore_for_file: file_names, non_constant_identifier_names

import 'package:app/notifier/BaseNotifier.dart';

class GroupNotifier extends BaseNotifier {
  void GroupNew({
    required URL,
    required GroupName,
    required Remark,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await managerGroupApi.GroupNew(
        URL: URL,
        GroupName: GroupName,
        Remark: Remark,
        ID: ID,
      ).then((Value) {
        OperationStatus = Value.State;
        OperationMemo = Value.Message;
        OperationData = Value.Data;
      });
    } catch (e) {
      OperationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void GroupList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await managerGroupApi.GroupList(
        URL: URL,
        Page: Page,
        PageSize: PageSize,
        Order: Order,
        Stext: Stext,
      ).then((Value) {
        OperationStatus = Value.State;
        OperationMemo = Value.Message;
        OperationData = Value.Data;
      });
    } catch (e) {
      OperationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void GroupAll({
    required URL,
    required Order,
    required Stext,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await managerGroupApi.GroupAll(
        URL: URL,
        Order: Order,
        Stext: Stext,
      ).then((Value) {
        OperationStatus = Value.State;
        OperationMemo = Value.Message;
        OperationData = Value.Data;
      });
    } catch (e) {
      OperationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void GroupData({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await managerGroupApi.GroupData(
        URL: URL,
        ID: ID,
      ).then((Value) {
        OperationStatus = Value.State;
        OperationMemo = Value.Message;
        OperationData = Value.Data;
      });
    } catch (e) {
      OperationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void GroupDel({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await managerGroupApi.GroupDel(
        URL: URL,
        ID: ID,
      ).then((Value) {
        OperationStatus = Value.State;
        OperationMemo = Value.Message;
        OperationData = Value.Data;
      });
    } catch (e) {
      OperationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }
}
