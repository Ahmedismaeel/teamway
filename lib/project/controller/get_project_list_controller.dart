import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/home/model/project_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_project_list_controller.g.dart';

@riverpod
Future<List<ProjectModel>> getProjectList(GetProjectListRef ref) async {
  final response = await DioClient.instance.get(EndPoints.projectList);

  List<ProjectModel> list = [];
  response.data.forEach((project) {
    list.add(ProjectModel.fromJson(project));
  });
  return list;
}
