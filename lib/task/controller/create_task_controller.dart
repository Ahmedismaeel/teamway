import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/home/controller/my_profile_controller.dart';
import 'package:internal_app/task/controller/my_tasks_controller.dart';
import 'package:internal_app/home/controller/status_list_controller.dart';
import 'package:internal_app/task/controller/subtasks_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'create_task_controller.g.dart';

@riverpod
class CreateTask extends _$CreateTask {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  createNewTask(
      {required String title,
      required DateTime deadline,
      required DateTime start_date,
      required String description,
      required int assignedTo,
      int? projectId}) async {
    FormData body = projectId == null
        ? FormData.fromMap({
            "title": title,
            "description": description,
            "deadline": deadline.toDate(),
            "start_date": start_date.toDate(),
            "assigned_to": assignedTo,
            "status_id": 1,
          })
        : FormData.fromMap({
            "title": title,
            "description": description,
            "deadline": deadline.toDate(),
            "start_date": start_date.toDate(),
            "assigned_to": assignedTo,
            "status_id": 1,
            "project_id": projectId
          });
    "${body.fields}".log();
    await postFormDataHelper(state, url: EndPoints.task, body: body,
        onSuccess: (onSuccess) {
      "Success $onSuccess".log();
      state = SubmitState.success(response: 0);
      ref.invalidate(myTasksProvider);
    });
  }

  createNewSubTask(
      {required String title,
      required DateTime deadline,
      required DateTime start_date,
      required String description,
      required int parentId,
      required int assignedTo}) async {
    FormData body = FormData.fromMap({
      "title": title,
      "description": description,
      "deadline": deadline.toDate(),
      "start_date": start_date.toDate(),
      "assigned_to": assignedTo,
      "status_id": 1,
      "parent_id": parentId
    });
    "${body.fields}".log();
    await postFormDataHelper(state, url: EndPoints.task, body: body,
        onSuccess: (onSuccess) {
      "Success $onSuccess".log();
      state = const SubmitState.success(response: 0);
      ref.invalidate(subTaskListProvider(taskId: parentId));
    });
  }
}
