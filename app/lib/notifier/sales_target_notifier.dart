// ignore_for_file: non_constant_identifier_names

import 'package:app/notifier/base_notifier.dart';

class SalesTargetNotifier extends BaseNotifier {
  void SalesTargetNew({
    required URL,
    required TargetName,
    required ExpirationDate,
    required CustomerID,
    required Remark,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await salesTargetApi.SalesTargetNew(
        URL: URL,
        TargetName: TargetName,
        ExpirationDate: ExpirationDate,
        CustomerID: CustomerID,
        Remark: Remark,
        ID: ID,
      ).then((value) {
        operationStatus = value.State;
        operationMemo = value.Message;
        operationData = value.Data;
      });
    } catch (e) {
      operationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void SalesTargetList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required CustomerID,
    required ManagerID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await salesTargetApi.SalesTargetList(
        URL: URL,
        Page: Page,
        PageSize: PageSize,
        Order: Order,
        Stext: Stext,
        CustomerID: CustomerID,
        ManagerID: ManagerID,
      ).then((value) {
        operationStatus = value.State;
        operationMemo = value.Message;
        operationData = value.Data;
      });
    } catch (e) {
      operationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void SalesTargetAll({
    required URL,
    required Order,
    required Stext,
    required CustomerID,
    required ManagerID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await salesTargetApi.SalesTargetAll(
        URL: URL,
        Order: Order,
        Stext: Stext,
        CustomerID: CustomerID,
        ManagerID: ManagerID,
      ).then((value) {
        operationStatus = value.State;
        operationMemo = value.Message;
        operationData = value.Data;
      });
    } catch (e) {
      operationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void SalesTargetData({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await salesTargetApi.SalesTargetData(
        URL: URL,
        ID: ID,
      ).then((value) {
        operationStatus = value.State;
        operationMemo = value.Message;
        operationData = value.Data;
      });
    } catch (e) {
      operationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void SalesTargetDel({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await salesTargetApi.SalesTargetDel(
        URL: URL,
        ID: ID,
      ).then((value) {
        operationStatus = value.State;
        operationMemo = value.Message;
        operationData = value.Data;
      });
    } catch (e) {
      operationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }
}
