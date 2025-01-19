import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/project/model/project_file_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'get_project_file_controller.g.dart';

@riverpod
Future<List<ProjectFileModel>> projectFileList(ProjectFileListRef ref,
    {required String projectId}) async {
  return await EndPoints.projectFilelist(projectId: projectId)
      .getList<ProjectFileModel>(fromJson: ProjectFileModel.fromJson);
}
