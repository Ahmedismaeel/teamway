// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_estimate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectEstimateModel _$$_ProjectEstimateModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProjectEstimateModel(
      page: json['page'] as int?,
      size: json['size'] as int?,
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => LeadEstimateModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProjectEstimateModelToJson(
        _$_ProjectEstimateModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'content': instance.content,
    };
