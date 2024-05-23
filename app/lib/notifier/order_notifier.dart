// ignore_for_file: non_constant_identifier_names

import 'package:app/notifier/base_notifier.dart';

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
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await orderApi.OrderNew(
        URL: URL,
        OrderNo: OrderNo,
        ProductID: ProductID,
        ManagerID: ManagerID,
        CustomerID: CustomerID,
        DistributorID: DistributorID,
        OrderPrice: OrderPrice,
        Remark: Remark,
        OrderType: OrderType,
        Payment: Payment,
        Review: Review,
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
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await orderApi.OrderList(
        URL: URL,
        Page: Page,
        PageSize: PageSize,
        Order: Order,
        Stext: Stext,
        ProductID: ProductID,
        ManagerID: ManagerID,
        CustomerID: CustomerID,
        DistributorID: DistributorID,
        Status: Status,
        OrderType: OrderType,
        Payment: Payment,
        Review: Review,
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
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await orderApi.OrderAll(
        URL: URL,
        Order: Order,
        Stext: Stext,
        ProductID: ProductID,
        ManagerID: ManagerID,
        CustomerID: CustomerID,
        DistributorID: DistributorID,
        Status: Status,
        OrderType: OrderType,
        Payment: Payment,
        Review: Review,
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

  void OrderData({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await orderApi.OrderData(
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

  void OrderDel({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await orderApi.OrderDel(
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
