import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_details_model.freezed.dart';
part 'project_details_model.g.dart';

@freezed
class ProjectDetailsModel with _$ProjectDetailsModel {
  const factory ProjectDetailsModel({
    int? id,
    String? title,
    String? description,
    String? start_date,
    String? deadline,
    String? expected_finish_date,
    int? client_id,
    String? created_date,
    int? created_by,
    String? status,
    String? labels,
    String? price,
    String? starred_by,
    String? estimate_id,
    int? master_team_member,
    int? site_status_id,
    int? stage_id,
    List<int>? system_types,
    bool? ready,
    String? ready_date,
    String? location,
    String? deleted,
    String? department,
    int? cost_center_id,
    String? has_mult_cost_center,
    String? updated_at,
    int? updated_by,
    String? collection_date,
  }) = _ProjectDetailsModel;

  factory ProjectDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectDetailsModelFromJson(json);
}
