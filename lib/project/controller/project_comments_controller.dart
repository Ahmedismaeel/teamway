import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/project/model/project_comment_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_comments_controller.g.dart';

@riverpod
Future<List<ProjectCommentModel>> projectCommentList(ProjectCommentListRef ref,
    {required String projectId}) async {
  return await EndPoints.projectComments(projectId: projectId)
      .getList<ProjectCommentModel>(fromJson: ProjectCommentModel.fromJson);
}
