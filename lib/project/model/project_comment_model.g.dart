// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectCommentModel _$$_ProjectCommentModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProjectCommentModel(
      id: json['id'] as int?,
      project_id: json['project_id'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      description: json['description'] as String?,
      parent_id: json['parent_id'] as int?,
      task_id: json['task_id'] as int?,
      file_id: json['file_id'] as int?,
      customer_feedback_id: json['customer_feedback_id'] as int?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => Files.fromJson(e as Map<String, dynamic>))
          .toList(),
      created_by: json['created_by'] as int?,
      created_by_user_name: json['created_by_user_name'] as String?,
      created_by_avatar: json['created_by_avatar'] as String?,
      total_replies: json['total_replies'] as int?,
    );

Map<String, dynamic> _$$_ProjectCommentModelToJson(
        _$_ProjectCommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'project_id': instance.project_id,
      'created_at': instance.created_at?.toIso8601String(),
      'description': instance.description,
      'parent_id': instance.parent_id,
      'task_id': instance.task_id,
      'file_id': instance.file_id,
      'customer_feedback_id': instance.customer_feedback_id,
      'files': instance.files,
      'created_by': instance.created_by,
      'created_by_user_name': instance.created_by_user_name,
      'created_by_avatar': instance.created_by_avatar,
      'total_replies': instance.total_replies,
    };

_$_Files _$$_FilesFromJson(Map<String, dynamic> json) => _$_Files(
      file_name: json['file_name'] as String?,
      url: json['url'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_FilesToJson(_$_Files instance) => <String, dynamic>{
      'file_name': instance.file_name,
      'url': instance.url,
      'thumbnail': instance.thumbnail,
    };
