// ignore_for_file: file_names, non_constant_identifier_names

import 'package:app/notifier/BaseNotifier.dart';

class CustomerNotifier extends BaseNotifier {
  void CustomerNew({
    required URL,
    required Name,
    required Birthday,
    required Gender,
    required Email,
    required Tel,
    required CustomerInfo,
    required Priority,
    required CompanyID,
    required AfterServiceID,
    required Level,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await customerApi.CustomerNew(
        URL,
        Name,
        Birthday,
        Gender,
        Email,
        Tel,
        CustomerInfo,
        Priority,
        CompanyID,
        AfterServiceID,
        Level,
        ID,
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

  void CustomerList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Gender,
    required Priority,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await customerApi.CustomerList(
        URL,
        Page,
        PageSize,
        Order,
        Stext,
        Gender,
        Priority,
        CompanyID,
        ManagerID,
        AfterServiceID,
        Level,
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

  void CustomerAll({
    required URL,
    required Order,
    required Stext,
    required Gender,
    required Priority,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await customerApi.CustomerAll(
        URL,
        Order,
        Stext,
        Gender,
        Priority,
        CompanyID,
        ManagerID,
        AfterServiceID,
        Level,
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

  void CustomerData({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await customerApi.CustomerData(
        URL,
        ID,
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

  void CustomerDel({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await customerApi.CustomerDel(
        URL,
        ID,
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
