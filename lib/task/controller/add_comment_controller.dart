import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/task/controller/comment_check_list_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_comment_controller.g.dart';

@riverpod
class AddCommentController extends _$AddCommentController {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  addComment(
      {required int taskId,
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
    "".log();
    "".log();
    postFormDataHelper(state,
        url: EndPoints.addComment(taskId: taskId),
        body: formData, onSuccess: (onSuccess) {
      state = const SubmitState.success(response: 0);

      ref.invalidate(commentAndCheckListProvider(taskId: taskId));
    });
  }

  addCheckList({required int taskId, required String title}) async {
    FormData formData = FormData();
    formData.fields.add(MapEntry("title", title));
    "".log();
    "".log();
    postFormDataHelper(state,
        url: EndPoints.addCheckList(taskId: taskId),
        body: formData, onSuccess: (onSuccess) {
      state = SubmitState.success(response: 0);
      ref.invalidate(commentAndCheckListProvider(taskId: taskId));
    });
  }

  removeCheckList({required int taskId}) async {
    "".log();
    "".log();
    await deleteHelper(state, url: EndPoints.removeCheckList(taskId: taskId),
        onSuccess: (onSuccess) {
      state = SubmitState.success(response: 0);
      ref.invalidate(commentAndCheckListProvider(taskId: taskId));
    });
  }

  removeComment({required int taskId}) async {
    "".log();
    await deleteHelper(state, url: EndPoints.removeComment(taskId: taskId),
        onSuccess: (onSuccess) {
      state = const SubmitState.success(response: 0);
      ref.invalidate(commentAndCheckListProvider(taskId: taskId));
    });
  }
}
