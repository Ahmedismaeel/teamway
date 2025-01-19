// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectFileModel _$$_ProjectFileModelFromJson(Map<String, dynamic> json) =>
    _$_ProjectFileModel(
      id: json['id'] as int?,
      file: json['file'] == null
          ? null
          : File.fromJson(json['file'] as Map<String, dynamic>),
      uploaded_by: json['uploaded_by'] as int?,
      uploaded_by_user_name: json['uploaded_by_user_name'] as String?,
      uploaded_by_user_avatar: json['uploaded_by_user_avatar'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_ProjectFileModelToJson(_$_ProjectFileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file': instance.file,
      'uploaded_by': instance.uploaded_by,
      'uploaded_by_user_name': instance.uploaded_by_user_name,
      'uploaded_by_user_avatar': instance.uploaded_by_user_avatar,
      'created_at': instance.created_at?.toIso8601String(),
    };

_$_File _$$_FileFromJson(Map<String, dynamic> json) => _$_File(
      name: json['name'] as String?,
      url: json['url'] as String?,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$$_FileToJson(_$_File instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'size': instance.size,
    };
