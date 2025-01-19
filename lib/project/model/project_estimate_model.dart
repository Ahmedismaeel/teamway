import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internal_app/leads/models/lead_estimate_model.dart';

part 'project_estimate_model.freezed.dart';
part 'project_estimate_model.g.dart';

@freezed
class ProjectEstimateModel with _$ProjectEstimateModel {
  const factory ProjectEstimateModel({
    int? page,
    int? size,
    List<LeadEstimateModel>? content,
  }) = _ProjectEstimateModel;

  factory ProjectEstimateModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectEstimateModelFromJson(json);
}
