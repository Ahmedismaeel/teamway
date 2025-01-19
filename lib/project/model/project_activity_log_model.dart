import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_activity_log_model.freezed.dart';
part 'project_activity_log_model.g.dart';

@freezed
class ProjectActivityLogModel with _$ProjectActivityLogModel {
  const factory ProjectActivityLogModel({
    int? created_by,
    String? created_at,
    String? created_by_user_name,
    String? created_by_avatar,
    String? label_color,
    String? action,
    String? log_type,
    String? log_for2,
    String? log_for_id2,
    String? log_for_title,
    String? log_type_title,
    List<String>? changes,
  }) = _ProjectActivityLogModel;

  factory ProjectActivityLogModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectActivityLogModelFromJson(json);
}
