// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pr_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PtTransactionModel _$$_PtTransactionModelFromJson(
        Map<String, dynamic> json) =>
    _$_PtTransactionModel(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      from: json['from'] as String?,
      to: json['to'] as String?,
      amount: json['amount'] as String?,
      note: json['note'] as String?,
      cash_on_hand: json['cash_on_hand'] as String?,
      status: json['status'] as String?,
      status_name: json['status_name'] as String?,
    );

Map<String, dynamic> _$$_PtTransactionModelToJson(
        _$_PtTransactionModel instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'from': instance.from,
      'to': instance.to,
      'amount': instance.amount,
      'note': instance.note,
      'cash_on_hand': instance.cash_on_hand,
      'status': instance.status,
      'status_name': instance.status_name,
    };
