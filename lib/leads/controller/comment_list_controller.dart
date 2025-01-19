import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/leads/models/lead_comment_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_list_controller.g.dart';

@riverpod
Future<List<LeadCommentModel>> getLeadCommentList(GetLeadCommentListRef ref,
    {required String leadId}) async {
  return await EndPoints.leadComments(leadId: leadId)
      .getList<LeadCommentModel>(fromJson: LeadCommentModel.fromJson);
}
