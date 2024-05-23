// ignore_for_file: non_constant_identifier_names

import 'package:app/notifier/base_notifier.dart';

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
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await customerApi.CustomerNew(
        URL: URL,
        Name: Name,
        Birthday: Birthday,
        Gender: Gender,
        Email: Email,
        Tel: Tel,
        CustomerInfo: CustomerInfo,
        Priority: Priority,
        CompanyID: CompanyID,
        AfterServiceID: AfterServiceID,
        Level: Level,
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
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await customerApi.CustomerList(
        URL: URL,
        Page: Page,
        PageSize: PageSize,
        Order: Order,
        Stext: Stext,
        Gender: Gender,
        Priority: Priority,
        CompanyID: CompanyID,
        ManagerID: ManagerID,
        AfterServiceID: AfterServiceID,
        Level: Level,
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
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await customerApi.CustomerAll(
        URL: URL,
        Order: Order,
        Stext: Stext,
        Gender: Gender,
        Priority: Priority,
        CompanyID: CompanyID,
        ManagerID: ManagerID,
        AfterServiceID: AfterServiceID,
        Level: Level,
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

  void CustomerData({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await customerApi.CustomerData(
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

  void CustomerDel({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await customerApi.CustomerDel(
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
