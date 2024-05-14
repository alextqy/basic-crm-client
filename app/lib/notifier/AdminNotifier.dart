// ignore_for_file: file_names, non_constant_identifier_names

import 'package:app/notifier/BaseNotifier.dart';

class AdminNotifier extends BaseNotifier {
  void AdminSignIn({
    required URL,
    required Account,
    required Password,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await adminApi.AdminSignIn(
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

  void AdminSignOut({
    required URL,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await adminApi.AdminSignOut(
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

  void AdminNew({
    required URL,
    required Account,
    required Password,
    required Name,
    required Remark,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await adminApi.AdminNew(
        URL: URL,
        Account: Account,
        Password: Password,
        Name: Name,
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

  void AdminList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Level,
    required Status,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await adminApi.AdminList(
        URL: URL,
        Page: Page,
        PageSize: PageSize,
        Order: Order,
        Stext: Stext,
        Level: Level,
        Status: Status,
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

  void AdminAll({
    required URL,
    required Order,
    required Stext,
    required Level,
    required Status,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await adminApi.AdminAll(
        URL: URL,
        Order: Order,
        Stext: Stext,
        Level: Level,
        Status: Status,
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

  void AdminData({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await adminApi.AdminData(
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

  void AdminDel({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await adminApi.AdminDel(
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

  void AdminStatus({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await adminApi.AdminStatus(
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
