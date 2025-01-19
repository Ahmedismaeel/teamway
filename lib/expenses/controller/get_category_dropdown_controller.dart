import 'package:core/core.dart';
import 'package:internal_app/expenses/model/dropdown_model.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'get_category_dropdown_controller.g.dart';

@riverpod
Future<List<DropdownModel>> getExpensesCategoryList(
    GetExpensesCategoryListRef ref) async {
  final response = await EndPoints.expensesCategoryList
      .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
  return response;
}
