import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'subtasks_controller.g.dart';

@riverpod
Future<List<TaskModel>> subTaskList(SubTaskListRef ref,
    {required int taskId}) async {
  final response =
      await DioClient.instance.get(EndPoints.subTasksList + "$taskId");

  List<TaskModel> list = [];
  response.data.forEach((item) {
    list.add(TaskModel.fromJson(item));
  });
  return list;
}
