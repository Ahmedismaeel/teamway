import 'package:core/core.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/task/controller/my_tasks_controller.dart';
import 'package:internal_app/task/controller/task_by_id_controller.dart';
import 'package:internal_app/task/controller/subtasks_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_task_status_controller.g.dart';

@riverpod
class UpdateTaskStatus extends _$UpdateTaskStatus {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  updateTask(
      {required String statusId,
      required int taskId,
      required int? parentId}) async {
    await getHelper(state, url: EndPoints.updateTasK(statusId, taskId),
        onSuccess: (onSuccess) {
      "Done Successfully $parentId".log();
      state = SubmitState.success(response: 0);
      SmartDialog.dismiss();
      ref.invalidate(getTaskByIdProvider(taskId));
      ref.invalidate(myTasksProvider);
      parentId != null
          ? ref.invalidate(subTaskListProvider(taskId: parentId))
          : "".log();
    });
  }

  // updateSubTask(
  //     {required String statusId,
  //     required int subTaskId,
  //     required int taskId}) async {
  //   await getHelper(state, url: EndPoints.updateTasK(statusId, subTaskId),
  //       onSuccess: (onSuccess) {
  //     state = SubmitState.success(response: 0);
  //     SmartDialog.dismiss();
  //   });
  //   // ref.invalidate(getTaskByIdProvider(taskId));
  //   ref.invalidate(subTaskListProvider(taskId: taskId));
  //   // ref.invalidate(subTaskListProvider(taskId: taskId));
  // }
}
