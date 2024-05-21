// ignore_for_file: non_constant_identifier_names, file_names

import 'package:app/model/ResultModel.dart';
import 'package:app/notifier/BaseNotifier.dart';

class AdminNotifier extends BaseNotifier {
  Future<ResultModel> AdminSignIn({
    required URL,
    required Account,
    required Password,
  }) async {
    return await adminApi.AdminSignIn(URL: URL, Account: Account, Password: Password);
  }

  Future<ResultModel> AdminSignOut({
    required URL,
  }) async {
    return await adminApi.AdminSignOut(URL: URL);
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
    OperationMemo = '';
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
    OperationMemo = '';
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
    OperationMemo = '';
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
    OperationMemo = '';
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
    OperationMemo = '';
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
    OperationMemo = '';
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
