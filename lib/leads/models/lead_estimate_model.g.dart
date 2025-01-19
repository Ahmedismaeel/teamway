// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_estimate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LeadEstimateModel _$$_LeadEstimateModelFromJson(Map<String, dynamic> json) =>
    _$_LeadEstimateModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      client: json['client'] == null
          ? null
          : Client.fromJson(json['client'] as Map<String, dynamic>),
      estimate_date: json['estimate_date'] == null
          ? null
          : DateTime.parse(json['estimate_date'] as String),
      amount: json['amount'] as String?,
      tax: json['tax'] as String?,
      status: json['status'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      cost_center: json['cost_center'] == null
          ? null
          : CostCenter.fromJson(json['cost_center'] as Map<String, dynamic>),
      permission: json['permission'] == null
          ? null
          : Permission.fromJson(json['permission'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LeadEstimateModelToJson(
        _$_LeadEstimateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'client': instance.client,
      'estimate_date': instance.estimate_date?.toIso8601String(),
      'amount': instance.amount,
      'tax': instance.tax,
      'status': instance.status,
      'owner': instance.owner,
      'cost_center': instance.cost_center,
      'permission': instance.permission,
    };

_$_Client _$$_ClientFromJson(Map<String, dynamic> json) => _$_Client(
      id: json['id'] as int?,
      name: json['name'] as String?,
      is_lead: json['is_lead'] as bool?,
    );

Map<String, dynamic> _$$_ClientToJson(_$_Client instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_lead': instance.is_lead,
    };

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_CostCenter _$$_CostCenterFromJson(Map<String, dynamic> json) =>
    _$_CostCenter(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_CostCenterToJson(_$_CostCenter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Permission _$$_PermissionFromJson(Map<String, dynamic> json) =>
    _$_Permission(
      can_edit: json['can_edit'] as bool?,
      can_delete: json['can_delete'] as bool?,
    );

Map<String, dynamic> _$$_PermissionToJson(_$_Permission instance) =>
    <String, dynamic>{
      'can_edit': instance.can_edit,
      'can_delete': instance.can_delete,
    };
