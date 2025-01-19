import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_by_id_controller.g.dart';

@riverpod
Future<TaskModel> getTaskById(GetTaskByIdRef ref, int taskId) async {
  final response = await DioClient.instance.get(EndPoints.task + "$taskId");

  return TaskModel.fromJson(response.data);
}
