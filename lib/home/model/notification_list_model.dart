import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_list_model.freezed.dart';
part 'notification_list_model.g.dart';

@freezed
class NotificationListModel with _$NotificationListModel {
  const factory NotificationListModel({
    int? page,
    int? size,
    List<Content>? content,
  }) = _NotificationListModel;

  factory NotificationListModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationListModelFromJson(json);
}

@freezed
class Content with _$Content {
  const factory Content({
    int? id,
    DateTime? created_at,
    Data? data,
    Notification? notification,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? icon,
    String? notification_id,
    String? event,
    String? entity_id,
    String? module,
    String? description,
    String? title,
    String? body,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Notification with _$Notification {
  const factory Notification({
    String? body,
    String? title,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
