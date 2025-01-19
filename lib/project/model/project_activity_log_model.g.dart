// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_activity_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectActivityLogModel _$$_ProjectActivityLogModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProjectActivityLogModel(
      created_by: json['created_by'] as int?,
      created_at: json['created_at'] as String?,
      created_by_user_name: json['created_by_user_name'] as String?,
      created_by_avatar: json['created_by_avatar'] as String?,
      label_color: json['label_color'] as String?,
      action: json['action'] as String?,
      log_type: json['log_type'] as String?,
      log_for2: json['log_for2'] as String?,
      log_for_id2: json['log_for_id2'] as String?,
      log_for_title: json['log_for_title'] as String?,
      log_type_title: json['log_type_title'] as String?,
      changes:
          (json['changes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProjectActivityLogModelToJson(
        _$_ProjectActivityLogModel instance) =>
    <String, dynamic>{
      'created_by': instance.created_by,
      'created_at': instance.created_at,
      'created_by_user_name': instance.created_by_user_name,
      'created_by_avatar': instance.created_by_avatar,
      'label_color': instance.label_color,
      'action': instance.action,
      'log_type': instance.log_type,
      'log_for2': instance.log_for2,
      'log_for_id2': instance.log_for_id2,
      'log_for_title': instance.log_for_title,
      'log_type_title': instance.log_type_title,
      'changes': instance.changes,
    };
