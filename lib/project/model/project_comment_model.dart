import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_comment_model.freezed.dart';
part 'project_comment_model.g.dart';

@freezed
class ProjectCommentModel with _$ProjectCommentModel {
  const factory ProjectCommentModel({
    int? id,
    int? project_id,
    DateTime? created_at,
    String? description,
    int? parent_id,
    int? task_id,
    int? file_id,
    int? customer_feedback_id,
    List<Files>? files,
    int? created_by,
    String? created_by_user_name,
    String? created_by_avatar,
    int? total_replies,
  }) = _ProjectCommentModel;

  factory ProjectCommentModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectCommentModelFromJson(json);
}

@freezed
class Files with _$Files {
  const factory Files({
    String? file_name,
    String? url,
    String? thumbnail,
  }) = _Files;

  factory Files.fromJson(Map<String, dynamic> json) => _$FilesFromJson(json);
}
