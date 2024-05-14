// ignore_for_file: file_names, non_constant_identifier_names

import 'package:app/notifier/BaseNotifier.dart';

class AfterServiceNotifier extends BaseNotifier {
  void AfterServiceNew({
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
      await afterServiceApi.AfterServiceNew(
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

  void AfterServiceList({
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
      await afterServiceApi.AfterServiceList(
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

  void AfterServiceAll({
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
      await afterServiceApi.AfterServiceAll(
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

  void AfterServiceData({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await afterServiceApi.AfterServiceData(
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

  void AfterServiceDel({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await afterServiceApi.AfterServiceDel(
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

  void AfterServiceStatus({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await afterServiceApi.AfterServiceStatus(
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

  void AfterServiceSignIn({
    required URL,
    required Account,
    required Password,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await afterServiceApi.AfterServiceSignIn(
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

  void AfterServiceSignOut({
    required URL,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await afterServiceApi.AfterServiceSignOut(
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

  void AfterServiceUpdate({
    required URL,
    required Password,
    required Name,
    required Remark,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await afterServiceApi.AfterServiceUpdate(
        URL: URL,
        Password: Password,
        Name: Name,
        Remark: Remark,
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
