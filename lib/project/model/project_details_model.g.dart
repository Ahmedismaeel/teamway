// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectDetailsModel _$$_ProjectDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProjectDetailsModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      start_date: json['start_date'] as String?,
      deadline: json['deadline'] as String?,
      expected_finish_date: json['expected_finish_date'] as String?,
      client_id: json['client_id'] as int?,
      created_date: json['created_date'] as String?,
      created_by: json['created_by'] as int?,
      status: json['status'] as String?,
      labels: json['labels'] as String?,
      price: json['price'] as String?,
      starred_by: json['starred_by'] as String?,
      estimate_id: json['estimate_id'] as String?,
      master_team_member: json['master_team_member'] as int?,
      site_status_id: json['site_status_id'] as int?,
      stage_id: json['stage_id'] as int?,
      system_types: (json['system_types'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      ready: json['ready'] as bool?,
      ready_date: json['ready_date'] as String?,
      location: json['location'] as String?,
      deleted: json['deleted'] as String?,
      department: json['department'] as String?,
      cost_center_id: json['cost_center_id'] as int?,
      has_mult_cost_center: json['has_mult_cost_center'] as String?,
      updated_at: json['updated_at'] as String?,
      updated_by: json['updated_by'] as int?,
      collection_date: json['collection_date'] as String?,
    );

Map<String, dynamic> _$$_ProjectDetailsModelToJson(
        _$_ProjectDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'start_date': instance.start_date,
      'deadline': instance.deadline,
      'expected_finish_date': instance.expected_finish_date,
      'client_id': instance.client_id,
      'created_date': instance.created_date,
      'created_by': instance.created_by,
      'status': instance.status,
      'labels': instance.labels,
      'price': instance.price,
      'starred_by': instance.starred_by,
      'estimate_id': instance.estimate_id,
      'master_team_member': instance.master_team_member,
      'site_status_id': instance.site_status_id,
      'stage_id': instance.stage_id,
      'system_types': instance.system_types,
      'ready': instance.ready,
      'ready_date': instance.ready_date,
      'location': instance.location,
      'deleted': instance.deleted,
      'department': instance.department,
      'cost_center_id': instance.cost_center_id,
      'has_mult_cost_center': instance.has_mult_cost_center,
      'updated_at': instance.updated_at,
      'updated_by': instance.updated_by,
      'collection_date': instance.collection_date,
    };
