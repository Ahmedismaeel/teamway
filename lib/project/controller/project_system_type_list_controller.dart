import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/project/model/site_status_mode.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_system_type_list_controller.g.dart';

@riverpod
Future<List<SiteStatusModel>> systemProjectList(
    SystemProjectListRef ref) async {
  return await EndPoints.projectSystemList
      .getList<SiteStatusModel>(fromJson: SiteStatusModel.fromJson);
}
