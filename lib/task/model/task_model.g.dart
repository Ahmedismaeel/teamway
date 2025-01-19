// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      id: json['id'] as int?,
      parent_id: json['parent_id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      start_date: json['start_date'] as String?,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      assigned_to_id: json['assigned_to_id'] as int?,
      assigned_to_user_name: json['assigned_to_user_name'] as String?,
      assigned_to_avatar: json['assigned_to_avatar'] as String?,
      project_id: json['project_id'] as int?,
      project_title: json['project_title'] as String?,
      status_key_name: json['status_key_name'] as String?,
      status: json['status'] as String?,
      status_color: json['status_color'] as String?,
      collaborators: (json['collaborators'] as List<dynamic>?)
          ?.map((e) => Collaborators.fromJson(e as Map<String, dynamic>))
          .toList(),
      permissions: json['permissions'] == null
          ? null
          : Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parent_id,
      'title': instance.title,
      'description': instance.description,
      'start_date': instance.start_date,
      'deadline': instance.deadline?.toIso8601String(),
      'assigned_to_id': instance.assigned_to_id,
      'assigned_to_user_name': instance.assigned_to_user_name,
      'assigned_to_avatar': instance.assigned_to_avatar,
      'project_id': instance.project_id,
      'project_title': instance.project_title,
      'status_key_name': instance.status_key_name,
      'status': instance.status,
      'status_color': instance.status_color,
      'collaborators': instance.collaborators,
      'permissions': instance.permissions,
    };

_$_Collaborators _$$_CollaboratorsFromJson(Map<String, dynamic> json) =>
    _$_Collaborators(
      id: json['id'] as int?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_CollaboratorsToJson(_$_Collaborators instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
    };

_$_Permissions _$$_PermissionsFromJson(Map<String, dynamic> json) =>
    _$_Permissions(
      can_edit: json['can_edit'] as bool?,
      can_delete: json['can_delete'] as bool?,
    );

Map<String, dynamic> _$$_PermissionsToJson(_$_Permissions instance) =>
    <String, dynamic>{
      'can_edit': instance.can_edit,
      'can_delete': instance.can_delete,
    };
