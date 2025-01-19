import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'lead_source_model.freezed.dart';
part 'lead_source_model.g.dart';

@freezed
class LeadSourceModel with _$LeadSourceModel {
	const factory LeadSourceModel({
int? id,
String? title,
	}) = _LeadSourceModel;

	factory LeadSourceModel.fromJson(Map<String, dynamic> json) => _$LeadSourceModelFromJson(json);
}