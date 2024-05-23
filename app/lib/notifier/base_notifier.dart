// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:app/model/admin_model.dart';
import 'package:app/model/after_service_model.dart';
import 'package:app/model/announcement_model.dart';
import 'package:app/model/company_model.dart';
import 'package:app/model/customer_model.dart';
import 'package:app/model/customer_qa_model.dart';
import 'package:app/model/distributor_model.dart';
import 'package:app/model/manager_group_model.dart';
import 'package:app/model/manager_model.dart';
import 'package:app/model/order_model.dart';
import 'package:app/model/product_model.dart';
import 'package:app/model/result_model.dart';
import 'package:app/model/result_list_model.dart';
import 'package:app/model/sales_plan_model.dart';
import 'package:app/model/sales_target_model.dart';
import 'package:app/model/supplier_model.dart';

import 'package:app/api/admin_api.dart';
import 'package:app/api/after_service_api.dart';
import 'package:app/api/announcement_api.dart';
import 'package:app/api/company_api.dart';
import 'package:app/api/customer_api.dart';
import 'package:app/api/customer_qa_api.dart';
import 'package:app/api/distributor_api.dart';
import 'package:app/api/group_api.dart';
import 'package:app/api/manager_api.dart';
import 'package:app/api/order_api.dart';
import 'package:app/api/product_api.dart';
import 'package:app/api/sales_plan_api.dart';
import 'package:app/api/sales_target_api.dart';
import 'package:app/api/supplier_api.dart';

class BaseNotifier extends ChangeNotifier {
  bool operationStatus = false;
  String operationMemo = '';
  dynamic operationData = '';

  /// MODEL ==========================================
  AdminModel adminModel = AdminModel();
  AfterServiceModel afterServiceModel = AfterServiceModel();
  AnnouncementModel announcementModel = AnnouncementModel();
  CompanyModel companyModel = CompanyModel();
  CustomerModel customerModel = CustomerModel();
  CustomerQAModel customerQAModel = CustomerQAModel();
  DistributorModel distributorModel = DistributorModel();
  ManagerGroupModel managerGroupModel = ManagerGroupModel();
  ManagerModel managerModel = ManagerModel();
  OrderModel orderModel = OrderModel();
  ProductModel productModel = ProductModel();
  ResultModel resultModel = ResultModel();
  ResultListModel resultListModel = ResultListModel();
  SalesPlanModel salesPlanModel = SalesPlanModel();
  SalesTargetModel salesTargetModel = SalesTargetModel();
  SupplierModel supplierModel = SupplierModel();

  /// API ==========================================
  AdminApi adminApi = AdminApi();
  AfterServiceApi afterServiceApi = AfterServiceApi();
  AnnouncementApi announcementApi = AnnouncementApi();
  CompanyApi companyApi = CompanyApi();
  CustomerApi customerApi = CustomerApi();
  CustomerQAApi customerQAApi = CustomerQAApi();
  DistributorApi distributorApi = DistributorApi();
  GroupApi managerGroupApi = GroupApi();
  ManagerApi managerApi = ManagerApi();
  OrderApi orderApi = OrderApi();
  ProductApi productApi = ProductApi();
  SalesPlanApi salesPlanApi = SalesPlanApi();
  SalesTargetApi salesTargetApi = SalesTargetApi();
  SupplierApi supplierApi = SupplierApi();
}
