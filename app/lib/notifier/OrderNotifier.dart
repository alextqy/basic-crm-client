// ignore_for_file: file_names, non_constant_identifier_names

import 'package:app/notifier/BaseNotifier.dart';

class OrderNotifier extends BaseNotifier {
  void OrderNew({
    required URL,
    required OrderNo,
    required ProductID,
    required ManagerID,
    required CustomerID,
    required DistributorID,
    required OrderPrice,
    required Remark,
    required OrderType,
    required Payment,
    required Review,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await orderApi.OrderNew(
        URL,
        OrderNo,
        ProductID,
        ManagerID,
        CustomerID,
        DistributorID,
        OrderPrice,
        Remark,
        OrderType,
        Payment,
        Review,
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

  void OrderList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required ProductID,
    required ManagerID,
    required CustomerID,
    required DistributorID,
    required Status,
    required OrderType,
    required Payment,
    required Review,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await orderApi.OrderList(
        URL,
        Page,
        PageSize,
        Order,
        Stext,
        ProductID,
        ManagerID,
        CustomerID,
        DistributorID,
        Status,
        OrderType,
        Payment,
        Review,
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

  void OrderAll({
    required URL,
    required Order,
    required Stext,
    required ProductID,
    required ManagerID,
    required CustomerID,
    required DistributorID,
    required Status,
    required OrderType,
    required Payment,
    required Review,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await orderApi.OrderAll(
        URL,
        Order,
        Stext,
        ProductID,
        ManagerID,
        CustomerID,
        DistributorID,
        Status,
        OrderType,
        Payment,
        Review,
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

  void OrderData({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await orderApi.OrderData(
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

  void OrderDel({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await orderApi.OrderDel(
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
