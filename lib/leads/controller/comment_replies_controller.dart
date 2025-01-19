import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/leads/models/lead_comment_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_replies_controller.g.dart';

@riverpod
Future<List<LeadCommentModel>> getLeadCommentReplies(
    GetLeadCommentRepliesRef ref,
    {required String commentId}) async {
  return await EndPoints.leadCommentReplies(commentId: commentId)
      .getList<LeadCommentModel>(fromJson: LeadCommentModel.fromJson);
}
