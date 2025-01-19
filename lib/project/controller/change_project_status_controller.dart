import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/project/controller/project_details_controller.dart';
import 'package:internal_app/project/view/comment_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_project_status_controller.g.dart';

@riverpod
class UpdateProjectStatus extends _$UpdateProjectStatus {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  changeStatus({required String projectId, required String status}) {
    getHelper(state,
        url:
            EndPoints.projectChangeStatus(projectId: projectId, status: status),
        onSuccess: (onSuccess) {
      state = const SubmitState.success(response: 0);
      ref.invalidate(projectDetailsProvider(projectId: int.parse(projectId)));
    });
  }

  updateOperation(
      {required String fieldName, required value, required int projectId}) {
    "${{"name": fieldName, "value": value}}".log();
    FormData body = FormData.fromMap({"name": fieldName, "value": value});

    postFormDataHelper(state,
        url: EndPoints.updateOperation(projectId: projectId.s),
        body: body, onSuccess: (onSuccess) {
      state = SubmitState.success(response: 0);
      ref.invalidate(projectDetailsProvider(projectId: projectId));
    });
  }
}
