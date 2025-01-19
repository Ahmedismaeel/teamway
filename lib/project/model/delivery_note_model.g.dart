// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryNoteModel _$$_DeliveryNoteModelFromJson(Map<String, dynamic> json) =>
    _$_DeliveryNoteModel(
      id: json['id'] as int?,
      invoice_id: json['invoice_id'] as int?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      client_name: json['client_name'] as String?,
      client_id: json['client_id'] as int?,
      project_title: json['project_title'] as String?,
      project_id: json['project_id'] as int?,
      status: json['status'] as String?,
      note: json['note'] as String?,
      can_edit: json['can_edit'] as bool?,
      can_delete: json['can_delete'] as bool?,
    );

Map<String, dynamic> _$$_DeliveryNoteModelToJson(
        _$_DeliveryNoteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice_id': instance.invoice_id,
      'date': instance.date?.toIso8601String(),
      'client_name': instance.client_name,
      'client_id': instance.client_id,
      'project_title': instance.project_title,
      'project_id': instance.project_id,
      'status': instance.status,
      'note': instance.note,
      'can_edit': instance.can_edit,
      'can_delete': instance.can_delete,
    };
