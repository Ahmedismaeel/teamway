import 'dart:convert';

import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/home/model/status_model.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'status_list_controller.g.dart';

@riverpod
Future<void> statusList(StatusListRef ref) async {
  final response = await DioClient.instance.get(EndPoints.statusList);
  "".log();
  List<String> list = [];
  response.data.forEach((item) {
    list.add(json.encode(StatusModel.fromJson(item)));
  });
  SharedPreferenceHelper.instance.saveStatusList(list);
  return;
}

List<StatusModel> getStatusList() {
  final list = SharedPreferenceHelper.instance.statusList;
  return List.generate(list.length, (i) {
    return StatusModel.fromJson(json.decode(list[i]));
  });
}
