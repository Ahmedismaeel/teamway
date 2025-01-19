import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/pt_cash/model/pt_summary_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'pt_cash_all_summary_controller.g.dart';

@riverpod
Future<List<PtSummaryModel>> allPtCashSummary(AllPtCashSummaryRef ref) async {
  final list = await EndPoints.ptCashSummary(1)
      .getList<PtSummaryModel>(fromJson: PtSummaryModel.fromJson);
  return list;
}
