// ignore_for_file: file_names, non_constant_identifier_names

import 'package:app/notifier/BaseNotifier.dart';

class DistributorNotifier extends BaseNotifier {
  void DistributorNew({
    required URL,
    required Name,
    required Email,
    required Tel,
    required DistributorInfo,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await distributorApi.DistributorNew(
        URL,
        Name,
        Email,
        Tel,
        DistributorInfo,
        CompanyID,
        ManagerID,
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

  void DistributorList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await distributorApi.DistributorList(
        URL,
        Page,
        PageSize,
        Order,
        Stext,
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

  void DistributorAll({
    required URL,
    required Order,
    required Stext,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await distributorApi.DistributorAll(
        URL,
        Order,
        Stext,
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

  void DistributorData({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await distributorApi.DistributorData(
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

  void DistributorDel({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await distributorApi.DistributorDel(
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
