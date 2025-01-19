import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/project/controller/project_comments_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_comment_project_controller.g.dart';

@riverpod
class AddCommentProject extends _$AddCommentProject {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  addComment(
      {required String projectId,
      required List<XFile> images,
      required String note}) async {
    FormData formData = FormData();

    for (var element in images) {
      formData.files.add(MapEntry(
          "manualFiles[]",
          MultipartFile.fromBytes(await element.readAsBytes(),
              filename: element.path.split('/').last)));
    }

    formData.fields.add(MapEntry("description", note));
    await postFormDataHelper(state,
        url: EndPoints.addProjectComment(projectId: projectId),
        body: formData, onSuccess: (s) {
      state = const SubmitState.loading();
      ref.invalidate(projectCommentListProvider(projectId: projectId));
    });
  }

  addReply(
      {required String commentId,
      required String projectId,
      required List<XFile> images,
      required String note}) async {
    FormData formData = FormData();

    for (var element in images) {
      formData.files.add(MapEntry(
          "manualFiles[]",
          MultipartFile.fromBytes(await element.readAsBytes(),
              filename: element.path.split('/').last)));
    }

    formData.fields.add(MapEntry("description", note));
    formData.fields.add(MapEntry("parent_id", commentId));

    await postFormDataHelper(state,
        url: EndPoints.addProjectComment(projectId: projectId),
        body: formData, onSuccess: (s) {
      state = const SubmitState.loading();
      ref.invalidate(projectCommentListProvider(projectId: projectId));
    });
  }
}
