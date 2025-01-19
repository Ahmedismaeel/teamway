import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/task/controller/task_by_id_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_task_info_controller.g.dart';

@riverpod
class UpdateTaskInfo extends _$UpdateTaskInfo {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  updateTaskInfo(
      {required int taskId,
      required String title,
      required DateTime deadline,
      required DateTime start_date,
      required String description,
      required int assigned_to_id,
      int? projectId,
      required List<int> collaborators}) {
    String collaList = "";
    for (var colla in collaborators) {
      collaList = collaList + "$colla,";
    }
    FormData body = projectId != null
        ? FormData.fromMap({
            "title": title,
            "deadline": deadline.toDate(),
            "start_date": start_date.toDate(),
            "description": description,
            "collaborators": collaList,
            "assigned_to_id": assigned_to_id,
            "project_id": projectId
          })
        : FormData.fromMap({
            "title": title,
            "deadline": deadline.toDate(),
            "start_date": start_date.toDate(),
            "description": description,
            "collaborators": collaList,
            "assigned_to_id": assigned_to_id
          });

    collaList.isNotEmpty
        ? body.fields.add(MapEntry("collaborators", collaList))
        : "".log();
    postFormDataHelper(state, url: EndPoints.updateTaskInfo(taskId), body: body,
        onSuccess: (onSuccess) {
      state = const SubmitState.success(response: 0);
      ref.invalidate(getTaskByIdProvider(taskId));
    });
    // state =
  }
}
