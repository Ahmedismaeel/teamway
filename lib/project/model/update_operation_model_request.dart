import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'update_operation_model_request.freezed.dart';
part 'update_operation_model_request.g.dart';

@freezed
class UpdateOperationRequestModel with _$UpdateOperationRequestModel {
	const factory UpdateOperationRequestModel({
String? name,
int? value,
	}) = _UpdateOperationRequestModel;

	factory UpdateOperationRequestModel.fromJson(Map<String, dynamic> json) => _$UpdateOperationRequestModelFromJson(json);
}