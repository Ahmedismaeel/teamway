import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown_model.freezed.dart';
part 'dropdown_model.g.dart';

@freezed
class DropdownModel with _$DropdownModel {
  const factory DropdownModel({
    int? id,
    String? title,
  }) = _DropdownModel;

  factory DropdownModel.fromJson(Map<String, dynamic> json) =>
      _$DropdownModelFromJson(json);
}
