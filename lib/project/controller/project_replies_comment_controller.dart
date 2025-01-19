import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/project/model/project_comment_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_replies_comment_controller.g.dart';

@riverpod
Future<List<ProjectCommentModel>> repliesComment(RepliesCommentRef ref,
    {required String commentId}) async {
  return await EndPoints.commentReply(commentId: commentId)
      .getList<ProjectCommentModel>(fromJson: ProjectCommentModel.fromJson);
}
