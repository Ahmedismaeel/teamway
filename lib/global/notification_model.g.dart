// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      module: json['module'] as String?,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      notification_id: json['notification_id'] as String?,
      entity_id: json['entity_id'] as String?,
      event: json['event'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'module': instance.module,
      'icon': instance.icon,
      'description': instance.description,
      'notification_id': instance.notification_id,
      'entity_id': instance.entity_id,
      'event': instance.event,
      'title': instance.title,
      'body': instance.body,
    };
