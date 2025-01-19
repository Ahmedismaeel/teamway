import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead_estimate_model.freezed.dart';
part 'lead_estimate_model.g.dart';

@freezed
class LeadEstimateModel with _$LeadEstimateModel {
  const factory LeadEstimateModel({
    int? id,
    String? name,
    Client? client,
    DateTime? estimate_date,
    String? amount,
    String? tax,
    String? status,
    Owner? owner,
    CostCenter? cost_center,
    Permission? permission,
  }) = _LeadEstimateModel;

  factory LeadEstimateModel.fromJson(Map<String, dynamic> json) =>
      _$LeadEstimateModelFromJson(json);
}

@freezed
class Client with _$Client {
  const factory Client({
    int? id,
    String? name,
    bool? is_lead,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    String? id,
    String? name,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

@freezed
class CostCenter with _$CostCenter {
  const factory CostCenter({
    String? id,
    String? name,
  }) = _CostCenter;

  factory CostCenter.fromJson(Map<String, dynamic> json) =>
      _$CostCenterFromJson(json);
}

@freezed
class Permission with _$Permission {
  const factory Permission({
    bool? can_edit,
    bool? can_delete,
  }) = _Permission;

  factory Permission.fromJson(Map<String, dynamic> json) =>
      _$PermissionFromJson(json);
}
