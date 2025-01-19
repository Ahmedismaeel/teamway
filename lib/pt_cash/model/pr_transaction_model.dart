import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'pr_transaction_model.freezed.dart';
part 'pr_transaction_model.g.dart';

@freezed
class PtTransactionModel with _$PtTransactionModel {
	const factory PtTransactionModel({
DateTime? date,
String? from,
String? to,
String? amount,
String? note,
String? cash_on_hand,
String? status,
String? status_name,
	}) = _PtTransactionModel;

	factory PtTransactionModel.fromJson(Map<String, dynamic> json) => _$PtTransactionModelFromJson(json);
}