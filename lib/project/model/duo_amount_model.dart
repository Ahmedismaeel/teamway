import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'duo_amount_model.freezed.dart';
part 'duo_amount_model.g.dart';

@freezed
class DuoAmountModel with _$DuoAmountModel {
	const factory DuoAmountModel({
bool? success,
String? due,
String? message,
	}) = _DuoAmountModel;

	factory DuoAmountModel.fromJson(Map<String, dynamic> json) => _$DuoAmountModelFromJson(json);
}