import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/leads/controller/comment_list_controller.dart';
import 'package:internal_app/leads/controller/comment_replies_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_comment_controller.g.dart';

@riverpod
class AddCommentLead extends _$AddCommentLead {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  add({
    required String leadId,
    required String description,
    required List<XFile> images,
  }) async {
    state = const SubmitState.initial();
    FormData formData = FormData();

    for (var element in images) {
      formData.files.add(MapEntry(
          "manualFiles[]",
          MultipartFile.fromBytes(await element.readAsBytes(),
              filename: element.path.split('/').last)));
    }

    formData.fields.add(MapEntry("description", description));
    await postFormDataHelper(state,
        url: EndPoints.leadAddUpdateComment(leadId: leadId),
        body: formData, onSuccess: (s) {
      state = SubmitState.success(response: 0);
      ref.invalidate(getLeadCommentListProvider(leadId: leadId));
    });
  }

  reply(
      {required String leadId,
      required String description,
      required List<XFile> images,
      required String commentId}) async {
    FormData formData = FormData();

    for (var element in images) {
      formData.files.add(MapEntry(
          "manualFiles[]",
          MultipartFile.fromBytes(await element.readAsBytes(),
              filename: element.path.split('/').last)));
    }

    formData.fields.add(MapEntry("description", description));
    formData.fields.add(MapEntry("parent_id", commentId));
    await postFormDataHelper(state,
        url: EndPoints.leadAddUpdateComment(leadId: leadId),
        body: formData, onSuccess: (s) {
      state = SubmitState.success(response: 0);
      ref.invalidate(getLeadCommentListProvider(leadId: leadId));
      ref.invalidate(getLeadCommentRepliesProvider(commentId: commentId));
    });
  }
}
