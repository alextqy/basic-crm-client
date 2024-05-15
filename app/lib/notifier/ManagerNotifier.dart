// ignore_for_file: non_constant_identifier_names, file_names

import 'package:app/notifier/BaseNotifier.dart';

class ManagerNotifier extends BaseNotifier {
  void ManagerNew({
    required URL,
    required Account,
    required Password,
    required Name,
    required Remark,
    required GroupID,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await managerApi.ManagerNew(
        URL: URL,
        Account: Account,
        Password: Password,
        Name: Name,
        Remark: Remark,
        GroupID: GroupID,
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

  void ManagerList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Level,
    required Status,
    required GroupID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await managerApi.ManagerList(
        URL: URL,
        Page: Page,
        PageSize: PageSize,
        Order: Order,
        Stext: Stext,
        Level: Level,
        Status: Status,
        GroupID: GroupID,
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

  void ManagerAll({
    required URL,
    required Order,
    required Stext,
    required Level,
    required Status,
    required GroupID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await managerApi.ManagerAll(
        URL: URL,
        Order: Order,
        Stext: Stext,
        Level: Level,
        Status: Status,
        GroupID: GroupID,
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

  void ManagerData({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await managerApi.ManagerData(
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

  void ManagerDel({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await managerApi.ManagerDel(
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

  void ManagerStatus({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await managerApi.ManagerStatus(
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

  void ManagerSignIn({
    required URL,
    required Account,
    required Password,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await managerApi.ManagerSignIn(
        URL: URL,
        Account: Account,
        Password: Password,
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

  void ManagerSignOut({
    required URL,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await managerApi.ManagerSignOut(
        URL: URL,
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

  void ManagerUpdate({
    required URL,
    required Password,
    required Name,
    required Remark,
    required GroupID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await managerApi.ManagerUpdate(
        URL: URL,
        Password: Password,
        Name: Name,
        Remark: Remark,
        GroupID: GroupID,
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
