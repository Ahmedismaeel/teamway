import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_expenses_controller.g.dart';

@riverpod
class CreateExpenses extends _$CreateExpenses {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  createExpensesApi(
      {required String? expense_date,
      required String? amount,
      required int? expense_user_id,
      required String? payment_mode,
      required String? description,
      required int? category_id,
      required int? tax_id,
      required int? item_id,
      required String? bank,
      required String? cheque_account,
      required String? cheque_due_date,
      required String? cheque_number,
      required int? expense_project_id,
      required int? treasury,
      required List<XFile> manualFiles}) async {
    state = const SubmitState.initial();
    FormData formData = FormData.fromMap({
      "expense_date": expense_date,
      "amount": amount,
      "expense_user_id": expense_user_id,
      "payment_mode": payment_mode,
      "description": description,
      "category_id": category_id,
      "item_id": item_id,
      "tax_id": tax_id,
      "bank": bank,
      "cheque_account": cheque_account,
      "cheque_due_date": cheque_due_date,
      "cheque_number": cheque_number,
      "expense_project_id": expense_project_id,
      "treasury": treasury
    });
    for (var element in manualFiles) {
      formData.files.add(MapEntry(
          "manualFiles[]",
          MultipartFile.fromBytes(await element.readAsBytes(),
              filename: element.path.split('/').last)));
    }

    await postFormDataHelper(state,
        url: EndPoints.createExpenses, body: formData, onSuccess: (data) {
      state = const SubmitState.success(response: 0);
      // ref.invalidate(provider)
    });
  }
}
