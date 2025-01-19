import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/leads/models/lead_estimate_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lead_estimate_controller.g.dart';

@riverpod
Future<List<LeadEstimateModel>> leadEstimateList(LeadEstimateListRef ref,
    {required int leadId}) async {
  return await EndPoints.leadEstimate(leadId: leadId)
      .getList<LeadEstimateModel>(fromJson: LeadEstimateModel.fromJson);
}
