import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/project/model/project_activity_log_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_activity_controller.g.dart';

@riverpod
Future<List<ProjectActivityLogModel>> projectActivity(ProjectActivityRef ref,
    {required int projectId, required int page, required int pageSize}) async {
  final response = await DioClient.instance.get(EndPoints.projectActivity(
      projectId: projectId, page: page, pageSize: pageSize));
  List<ProjectActivityLogModel> list = [];
  response.data["activity_logs"].forEach((activity) {
    list.add(ProjectActivityLogModel.fromJson(activity));
  });
  return list;
}
