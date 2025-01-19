import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'project_invoice_model.freezed.dart';
part 'project_invoice_model.g.dart';

@freezed
class ProjectInvoiceModel with _$ProjectInvoiceModel {
	const factory ProjectInvoiceModel({
int? id,
int? project_id,
String? client_name,
int? client_id,
String? client_phone,
DateTime? bill_date,
DateTime? due_date,
String? total_value,
String? payment_received,
String? tax_after_discount,
String? delivery_status,
String? approval_status,
String? invoice_status,
String? labels,
String? const_center_name,
int? const_center_id,
	}) = _ProjectInvoiceModel;

	factory ProjectInvoiceModel.fromJson(Map<String, dynamic> json) => _$ProjectInvoiceModelFromJson(json);
}