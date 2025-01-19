// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationListModel _$$_NotificationListModelFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationListModel(
      page: json['page'] as int?,
      size: json['size'] as int?,
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NotificationListModelToJson(
        _$_NotificationListModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'content': instance.content,
    };

_$_Content _$$_ContentFromJson(Map<String, dynamic> json) => _$_Content(
      id: json['id'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      notification: json['notification'] == null
          ? null
          : Notification.fromJson(json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContentToJson(_$_Content instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at?.toIso8601String(),
      'data': instance.data,
      'notification': instance.notification,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      icon: json['icon'] as String?,
      notification_id: json['notification_id'] as String?,
      event: json['event'] as String?,
      entity_id: json['entity_id'] as String?,
      module: json['module'] as String?,
      description: json['description'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'icon': instance.icon,
      'notification_id': instance.notification_id,
      'event': instance.event,
      'entity_id': instance.entity_id,
      'module': instance.module,
      'description': instance.description,
      'title': instance.title,
      'body': instance.body,
    };

_$_Notification _$$_NotificationFromJson(Map<String, dynamic> json) =>
    _$_Notification(
      body: json['body'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'body': instance.body,
      'title': instance.title,
    };
