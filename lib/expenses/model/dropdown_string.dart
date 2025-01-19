import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'dropdown_string.freezed.dart';
part 'dropdown_string.g.dart';

@freezed
class DropDownStringModel with _$DropDownStringModel {
	const factory DropDownStringModel({
String? id,
String? title,
	}) = _DropDownStringModel;

	factory DropDownStringModel.fromJson(Map<String, dynamic> json) => _$DropDownStringModelFromJson(json);
}