import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/leads/models/lead_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lead_by_id_controller.g.dart';

@riverpod
Future<Content> getLeadById(GetLeadByIdRef ref, {required int leadId}) async {
  "".log();
  return await EndPoints.leadById(leadId: leadId)
      .get(fromJson: Content.fromJson);
}
