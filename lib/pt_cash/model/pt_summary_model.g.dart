// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pt_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PtSummaryModel _$$_PtSummaryModelFromJson(Map<String, dynamic> json) =>
    _$_PtSummaryModel(
      employee_name: json['employee_name'] as String?,
      ptc: json['ptc'] as String?,
      total_received: json['total_received'] as String?,
      total_transfered: json['total_transfered'] as String?,
      total_expenses: json['total_expenses'] as String?,
    );

Map<String, dynamic> _$$_PtSummaryModelToJson(_$_PtSummaryModel instance) =>
    <String, dynamic>{
      'employee_name': instance.employee_name,
      'ptc': instance.ptc,
      'total_received': instance.total_received,
      'total_transfered': instance.total_transfered,
      'total_expenses': instance.total_expenses,
    };
