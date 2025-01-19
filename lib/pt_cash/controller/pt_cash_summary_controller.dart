import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/pt_cash/model/pt_summary_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pt_cash_summary_controller.g.dart';

@riverpod
Future<PtSummaryModel> ptCashSummary(PtCashSummaryRef ref) async {
  final list = await EndPoints.ptCashSummary(0)
      .getList<PtSummaryModel>(fromJson: PtSummaryModel.fromJson);
  return list[0];
}
