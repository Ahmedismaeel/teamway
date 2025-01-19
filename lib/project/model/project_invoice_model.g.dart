// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectInvoiceModel _$$_ProjectInvoiceModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProjectInvoiceModel(
      id: json['id'] as int?,
      project_id: json['project_id'] as int?,
      client_name: json['client_name'] as String?,
      client_id: json['client_id'] as int?,
      client_phone: json['client_phone'] as String?,
      bill_date: json['bill_date'] == null
          ? null
          : DateTime.parse(json['bill_date'] as String),
      due_date: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      total_value: json['total_value'] as String?,
      payment_received: json['payment_received'] as String?,
      tax_after_discount: json['tax_after_discount'] as String?,
      delivery_status: json['delivery_status'] as String?,
      approval_status: json['approval_status'] as String?,
      invoice_status: json['invoice_status'] as String?,
      labels: json['labels'] as String?,
      const_center_name: json['const_center_name'] as String?,
      const_center_id: json['const_center_id'] as int?,
    );

Map<String, dynamic> _$$_ProjectInvoiceModelToJson(
        _$_ProjectInvoiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'project_id': instance.project_id,
      'client_name': instance.client_name,
      'client_id': instance.client_id,
      'client_phone': instance.client_phone,
      'bill_date': instance.bill_date?.toIso8601String(),
      'due_date': instance.due_date?.toIso8601String(),
      'total_value': instance.total_value,
      'payment_received': instance.payment_received,
      'tax_after_discount': instance.tax_after_discount,
      'delivery_status': instance.delivery_status,
      'approval_status': instance.approval_status,
      'invoice_status': instance.invoice_status,
      'labels': instance.labels,
      'const_center_name': instance.const_center_name,
      'const_center_id': instance.const_center_id,
    };
