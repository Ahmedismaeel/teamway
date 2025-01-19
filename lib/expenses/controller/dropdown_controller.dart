import 'dart:convert';

import 'package:core/core.dart';
import 'package:internal_app/expenses/model/dropdown_model.dart';
import 'package:internal_app/expenses/model/dropdown_string.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dropdown_controller.g.dart';

@riverpod
Future<List<DropDownStringModel>> paymentMode(PaymentModeRef ref) async {
  return await EndPoints.paymentMode
      .getList<DropDownStringModel>(fromJson: DropDownStringModel.fromJson);
}

@riverpod
Future<List<DropdownModel>> taxList(TaxListRef ref) async {
  return await EndPoints.taxList
      .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
}

@riverpod
Future<List<DropdownModel>> expenseStatusList(ExpenseStatusListRef ref) async {
  return await EndPoints.expenseStatus
      .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
}

@riverpod
Future<List<DropdownModel>> bankList(BankListRef ref) async {
  return await EndPoints.bankList
      .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
}

@riverpod
Future<List<DropdownModel>> expenseTeamMember(ExpenseTeamMemberRef ref) async {
  return await EndPoints.expensesTeamMember
      .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
}

@riverpod
Future<List<DropdownModel>> treasuryList(TreasuryListRef ref) async {
  return await EndPoints.treasuryList
      .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
}
