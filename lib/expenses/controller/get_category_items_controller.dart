import 'package:core/core.dart';
import 'package:internal_app/expenses/model/dropdown_model.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_category_items_controller.g.dart';

@riverpod
Future<List<DropdownModel>> getCategoryItem(GetCategoryItemRef ref,
    {required int categoryId}) async {
  return await EndPoints.categoryItemList(categoryId: categoryId)
      .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
}
