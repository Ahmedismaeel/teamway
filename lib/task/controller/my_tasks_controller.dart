import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/home/model/member_model.dart';
import 'package:internal_app/home/model/status_model.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_tasks_controller.g.dart';

@riverpod
Future<Map<String, List<TaskModel>>> myTasks(MyTasksRef ref,
    {required List<StatusModel> statusList,
    List<MemberModel>? memberList,
    int? projectId}) async {
  // SmartDialog.showLoading();
  "".log();

  FormData formData = FormData();
  for (var element in statusList) {
    "${element.toJson()}".log();
    formData.fields.add(MapEntry("status_id[]", "${element.id}"));
  }
  for (var element in memberList ?? []) {
    "${element.toJson()}".log();
    formData.fields.add(MapEntry("team_members[]", "${element.id}"));
  }

  projectId != null
      ? formData.fields.add(MapEntry("project_id", "$projectId"))
      : "".log();
//formData.fields.add(MapEntry("specific_user_id", "${element.id}"));
  final response =
      await DioClient.instance.post(EndPoints.myTaskList, data: formData);

  List<TaskModel> earlier = [];
  List<TaskModel> current = [];
  List<TaskModel> later = [];

  late Map<String, List<TaskModel>> groug;
  "${DateTime.now().subtract(const Duration(days: 3))}".log();
  response.data.forEach((item) {
    final task = TaskModel.fromJson(item);
    if (task.deadline
            ?.isBefore(DateTime.now().subtract(const Duration(days: 3))) ==
        true) {
      earlier.add(task);
    } else if (task.deadline
            ?.isAfter(DateTime.now().add(const Duration(days: 3))) ==
        true) {
      later.add(task);
    } else {
      current.add(task);
    }
  });
  groug = {"earlier": earlier, "current": current, "later": later};
  return groug;
}
