import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/project/model/project_details_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'project_details_controller.g.dart';

@riverpod
Future<ProjectDetailsModel> projectDetails(ProjectDetailsRef ref,
    {required int projectId}) async {
  return await EndPoints.projectDetailsV2(projectId: projectId)
      .get<ProjectDetailsModel>(fromJson: ProjectDetailsModel.fromJson);
}
