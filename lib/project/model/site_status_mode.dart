import 'package:freezed_annotation/freezed_annotation.dart';

part 'site_status_mode.freezed.dart';
part 'site_status_mode.g.dart';

@freezed
class SiteStatusModel with _$SiteStatusModel {
  const factory SiteStatusModel({
    int? id,
    String? title,
    String? color,
  }) = _SiteStatusModel;

  factory SiteStatusModel.fromJson(Map<String, dynamic> json) =>
      _$SiteStatusModelFromJson(json);
}
