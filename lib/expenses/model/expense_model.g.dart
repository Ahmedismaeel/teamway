// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExpenseModel _$$_ExpenseModelFromJson(Map<String, dynamic> json) =>
    _$_ExpenseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      permissions: json['permissions'] == null
          ? null
          : Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ExpenseModelToJson(_$_ExpenseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'permissions': instance.permissions,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as String?,
      expense_date: json['expense_date'] as String?,
      category_id: json['category_id'] as String?,
      item_id: json['item_id'] as String?,
      category_name: json['category_name'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      project_id: json['project_id'] as String?,
      project_title: json['project_title'] as String?,
      user_id: json['user_id'] as String?,
      linked_user_name: json['linked_user_name'] as String?,
      company_name: json['company_name'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => Attachments.fromJson(e as Map<String, dynamic>))
          .toList(),
      amount: json['amount'] as String?,
      tax: json['tax'] as String?,
      payment_mode: json['payment_mode'] as String?,
      status: json['status'] as String?,
      cost_center_id: json['cost_center_id'] as String?,
      cost_center_name: json['cost_center_name'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'expense_date': instance.expense_date,
      'category_id': instance.category_id,
      'item_id': instance.item_id,
      'category_name': instance.category_name,
      'title': instance.title,
      'description': instance.description,
      'project_id': instance.project_id,
      'project_title': instance.project_title,
      'user_id': instance.user_id,
      'linked_user_name': instance.linked_user_name,
      'company_name': instance.company_name,
      'attachments': instance.attachments,
      'amount': instance.amount,
      'tax': instance.tax,
      'payment_mode': instance.payment_mode,
      'status': instance.status,
      'cost_center_id': instance.cost_center_id,
      'cost_center_name': instance.cost_center_name,
    };

_$_Attachments _$$_AttachmentsFromJson(Map<String, dynamic> json) =>
    _$_Attachments(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_AttachmentsToJson(_$_Attachments instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$_Permissions _$$_PermissionsFromJson(Map<String, dynamic> json) =>
    _$_Permissions(
      approve: json['approve'] as bool?,
      edit: json['edit'] as bool?,
      delete: json['delete'] as bool?,
    );

Map<String, dynamic> _$$_PermissionsToJson(_$_Permissions instance) =>
    <String, dynamic>{
      'approve': instance.approve,
      'edit': instance.edit,
      'delete': instance.delete,
    };
