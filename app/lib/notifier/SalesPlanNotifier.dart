// ignore_for_file: non_constant_identifier_names, file_names

import 'package:app/notifier/BaseNotifier.dart';

class SalesPlanNotifier extends BaseNotifier {
  void SalesPlanNew({
    required URL,
    required PlanName,
    required TargetID,
    required PlanContent,
    required Budget,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await salesPlanApi.SalesPlanNew(
        URL: URL,
        PlanName: PlanName,
        TargetID: TargetID,
        PlanContent: PlanContent,
        Budget: Budget,
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

  void SalesPlanList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required TargetID,
    required Status,
    required ManagerID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await salesPlanApi.SalesPlanList(
        URL: URL,
        Page: Page,
        PageSize: PageSize,
        Order: Order,
        Stext: Stext,
        TargetID: TargetID,
        Status: Status,
        ManagerID: ManagerID,
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

  void SalesPlanAll({
    required URL,
    required Order,
    required Stext,
    required TargetID,
    required Status,
    required ManagerID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await salesPlanApi.SalesPlanAll(
        URL: URL,
        Order: Order,
        Stext: Stext,
        TargetID: TargetID,
        Status: Status,
        ManagerID: ManagerID,
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

  void SalesPlanData({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await salesPlanApi.SalesPlanData(
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

  void SalesPlanDel({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await salesPlanApi.SalesPlanDel(
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
