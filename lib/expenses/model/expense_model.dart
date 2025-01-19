import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_model.freezed.dart';
part 'expense_model.g.dart';

@freezed
class ExpenseModel with _$ExpenseModel {
  const factory ExpenseModel({
    List<Data>? data,
    Permissions? permissions,
  }) = _ExpenseModel;

  factory ExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? id,
    String? expense_date,
    String? category_id,
    String? item_id,
    String? category_name,
    String? title,
    String? description,
    String? project_id,
    String? project_title,
    String? user_id,
    String? linked_user_name,
    String? company_name,
    List<Attachments>? attachments,
    String? amount,
    String? tax,
    String? payment_mode,
    String? status,
    String? cost_center_id,
    String? cost_center_name,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Attachments with _$Attachments {
  const factory Attachments({
    String? name,
    String? url,
  }) = _Attachments;

  factory Attachments.fromJson(Map<String, dynamic> json) =>
      _$AttachmentsFromJson(json);
}

@freezed
class Permissions with _$Permissions {
  const factory Permissions({
    bool? approve,
    bool? edit,
    bool? delete,
  }) = _Permissions;

  factory Permissions.fromJson(Map<String, dynamic> json) =>
      _$PermissionsFromJson(json);
}
