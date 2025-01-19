import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/project/model/site_stage_model.dart';
import 'package:internal_app/project/model/site_status_mode.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'site_stage_controller.g.dart';

@riverpod
Future<List<SiteStageModel>> siteStageList(SiteStageListRef ref) async {
  return await EndPoints.projectStages
      .getList<SiteStageModel>(fromJson: SiteStageModel.fromJson);
}

SiteStageModel? searchSiteStage(int? id, {required List<SiteStageModel> list}) {
  try {
    final _status = list.firstWhere((test) => id == test.id);
    return _status;
  } catch (e) {
    return null;
  }
}
