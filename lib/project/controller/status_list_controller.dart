import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'status_list_controller.g.dart';

@riverpod
Future<List<String>> projectStatusList(ProjectStatusListRef ref) async {
  final response = await DioClient.instance.get(EndPoints.projectStatusList);
  List<String> list = [];
  response.data.forEach((item) {
    list.add(item);
  });
  return list;
}
