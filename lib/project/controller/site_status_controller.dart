import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/project/model/site_status_mode.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'site_status_controller.g.dart';

@riverpod
Future<List<SiteStatusModel>> siteStatusList(SiteStatusListRef ref) async {
  return await EndPoints.siteStatus
      .getList<SiteStatusModel>(fromJson: SiteStatusModel.fromJson);
}

SiteStatusModel? searchSiteStatus(int? id,
    {required List<SiteStatusModel> list}) {
  try {
    final _status = list.firstWhere((test) => id == test.id);
    return _status;
  } catch (e) {
    return null;
  }
}
