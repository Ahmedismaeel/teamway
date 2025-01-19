import 'package:freezed_annotation/freezed_annotation.dart';

part 'site_stage_model.freezed.dart';
part 'site_stage_model.g.dart';

@freezed
class SiteStageModel with _$SiteStageModel {
  const factory SiteStageModel({
    int? id,
    String? site_status_id,
    String? title,
    String? color,
  }) = _SiteStageModel;

  factory SiteStageModel.fromJson(Map<String, dynamic> json) =>
      _$SiteStageModelFromJson(json);
}
