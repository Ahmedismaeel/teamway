import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'delivery_note_model.freezed.dart';
part 'delivery_note_model.g.dart';

@freezed
class DeliveryNoteModel with _$DeliveryNoteModel {
	const factory DeliveryNoteModel({
int? id,
int? invoice_id,
DateTime? date,
String? client_name,
int? client_id,
String? project_title,
int? project_id,
String? status,
String? note,
bool? can_edit,
bool? can_delete,
	}) = _DeliveryNoteModel;

	factory DeliveryNoteModel.fromJson(Map<String, dynamic> json) => _$DeliveryNoteModelFromJson(json);
}