import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/global/helper/api_provider.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/pt_cash/model/pr_transaction_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pt_cash_transactions_controller.g.dart';

@riverpod
Future<List<PtTransactionModel>> ptCashTransactions(PtCashTransactionsRef ref,
    {required DateTime startDate, required DateTime endDate}) async {
  final list = await EndPoints.ptCashTransactions(
          startDate: startDate.toDate(), endDate: endDate.toDate())
      .getList<PtTransactionModel>(fromJson: PtTransactionModel.fromJson);

  list.sort((a, b) {
    if (a.date == null || b.date == null) {
      return 1;
    }
    return b.date!.compareTo(a.date!);
  });
  return list;
  // final list = [
  //   {
  //     "date": "2024-01-01",
  //     "from": "Taghrid Awad",
  //     "to": "Momen Mamoun",
  //     "amount": "10.000",
  //     "note": "BANK TRANSFER PTC ",
  //     "cash_on_hand": "Taghrid Awad:-690337.609<br>Momen Mamoun:135.518",
  //     "status": "approved",
  //     "status_name": "Approved"
  //   },
  //   {
  //     "date": "2024-01-03",
  //     "from": "Taghrid Awad",
  //     "to": "Momen Mamoun",
  //     "amount": "20.000",
  //     "note": "BANK TRANSFER PTC ",
  //     "cash_on_hand": "Taghrid Awad:-702958.051<br>Momen Mamoun:155.518",
  //     "status": "approved",
  //     "status_name": "Approved"
  //   },
  //   {
  //     "date": "2024-01-03",
  //     "from": "Bank",
  //     "to": "Taghrid Awad",
  //     "amount": "100.000",
  //     "note": "BANK TRANSFER PTC ",
  //     "cash_on_hand": "Bank:<br>Taghrid Awad:-702958.051",
  //     "status": "approved",
  //     "status_name": "Approved"
  //   },
  //   {
  //     "date": "2024-01-03",
  //     "from": "Taghrid Awad",
  //     "to": "Momen Mamoun",
  //     "amount": "20.000",
  //     "note": "BANK TRANSFER PTC ",
  //     "cash_on_hand": "Taghrid Awad:-702958.051<br>Momen Mamoun:155.518",
  //     "status": "approved",
  //     "status_name": "Approved"
  //   },
  //   {
  //     "date": "2024-01-03",
  //     "from": "Bank",
  //     "to": "Taghrid Awad",
  //     "amount": "100.000",
  //     "note": "BANK TRANSFER PTC ",
  //     "cash_on_hand": "Bank:<br>Taghrid Awad:-702958.051",
  //     "status": "approved",
  //     "status_name": "Approved"
  //   }
  // ];
  // return List.generate(
  //     list.length, (i) => PtTransactionModel.fromJson(list[i]));
}
