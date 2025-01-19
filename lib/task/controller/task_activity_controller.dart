import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_activity_controller.g.dart';

@riverpod
Future<dynamic> taskActivity(TaskActivityRef ref,
    {required int taskId, required int page, required int pageSize}) async {
  final response = await DioClient.instance.get(
      EndPoints.taskActivity(taskId: taskId, page: page, pageSize: pageSize));

  return response.data;
}
