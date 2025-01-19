import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/leads/models/lead_source_model.dart';
import 'package:internal_app/leads/models/lead_status_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'leads_status_controller.g.dart';

@riverpod
Future<List<LeadStatusModel>> leadStatusList(LeadStatusListRef ref) async {
  return await EndPoints.leadStatusList
      .getList<LeadStatusModel>(fromJson: LeadStatusModel.fromJson);
}

@riverpod
Future<List<LeadSourceModel>> leadSourceList(LeadSourceListRef ref) async {
  return await EndPoints.leadSourceList
      .getList<LeadSourceModel>(fromJson: LeadSourceModel.fromJson);
}
