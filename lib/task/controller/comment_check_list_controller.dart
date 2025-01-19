import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/task/model/check_list_and_comment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_check_list_controller.g.dart';

@riverpod
Future<CheckListAndCommentModel> commentAndCheckList(CommentAndCheckListRef ref,
    {required int taskId}) async {
  "".log();
  "".log();
  final response =
      await DioClient.instance.get(EndPoints.commentAndCheckList + "$taskId");

  return CheckListAndCommentModel.fromJson(response.data);
}
