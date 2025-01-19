import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/leads/models/lead_estimate_model.dart';
import 'package:internal_app/project/model/project_estimate_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_estimate_controlle.g.dart';

@riverpod
Future<List<LeadEstimateModel>> projectEstimateList(ProjectEstimateListRef ref,
    {required int projectId}) async {
  final body = await EndPoints.projectEstimate(projectId: projectId)
      .get(fromJson: ProjectEstimateModel.fromJson);
  return body.content ?? [];
}
