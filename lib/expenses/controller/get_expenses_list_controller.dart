import 'package:core/core.dart';
import 'package:internal_app/expenses/model/expense_model.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_expenses_list_controller.g.dart';

@riverpod
Future<ExpenseModel> getExpensesList(GetExpensesListRef ref,
    {required DateTime fromDate, required DateTime toDate}) async {
  "test".log();
  final response = await DioClient.instance.get(EndPoints.expensesList(
      fromDate: fromDate.toDate(), toDate: toDate.toDate()));

  ExpenseModel expenseList = ExpenseModel.fromJson(response.data);
  List<Data>? data = [...(expenseList.data ?? [])];

  data.sort((a, b) {
    if (a.expense_date == null || b.expense_date == null) {
      return 1;
    }
    return b.expense_date!.compareTo(a.expense_date!);
  });
  data.reversed;
  return expenseList.copyWith(data: data);
}
