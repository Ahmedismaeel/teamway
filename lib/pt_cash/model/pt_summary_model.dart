import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'pt_summary_model.freezed.dart';
part 'pt_summary_model.g.dart';

@freezed
class PtSummaryModel with _$PtSummaryModel {
	const factory PtSummaryModel({
String? employee_name,
String? ptc,
String? total_received,
String? total_transfered,
String? total_expenses,
	}) = _PtSummaryModel;

	factory PtSummaryModel.fromJson(Map<String, dynamic> json) => _$PtSummaryModelFromJson(json);
}