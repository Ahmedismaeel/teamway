import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    int? id,
    int? parent_id,
    String? title,
    String? description,
    String? start_date,
    DateTime? deadline,
    int? assigned_to_id,
    String? assigned_to_user_name,
    String? assigned_to_avatar,
    int? project_id,
    String? project_title,
    String? status_key_name,
    String? status,
    String? status_color,
    List<Collaborators>? collaborators,
    Permissions? permissions,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

@freezed
class Collaborators with _$Collaborators {
  const factory Collaborators({
    int? id,
    String? name,
    String? avatar,
  }) = _Collaborators;

  factory Collaborators.fromJson(Map<String, dynamic> json) =>
      _$CollaboratorsFromJson(json);
}

@freezed
class Permissions with _$Permissions {
  const factory Permissions({
    bool? can_edit,
    bool? can_delete,
  }) = _Permissions;

  factory Permissions.fromJson(Map<String, dynamic> json) =>
      _$PermissionsFromJson(json);
}
