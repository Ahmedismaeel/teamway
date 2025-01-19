import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'lead_status_model.freezed.dart';
part 'lead_status_model.g.dart';

@freezed
class LeadStatusModel with _$LeadStatusModel {
	const factory LeadStatusModel({
int? id,
String? title,
String? color,
	}) = _LeadStatusModel;

	factory LeadStatusModel.fromJson(Map<String, dynamic> json) => _$LeadStatusModelFromJson(json);
}