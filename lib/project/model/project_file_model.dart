import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'project_file_model.freezed.dart';
part 'project_file_model.g.dart';

@freezed
class ProjectFileModel with _$ProjectFileModel {
	const factory ProjectFileModel({
int? id,
File? file,
int? uploaded_by,
String? uploaded_by_user_name,
String? uploaded_by_user_avatar,
DateTime? created_at,
	}) = _ProjectFileModel;

	factory ProjectFileModel.fromJson(Map<String, dynamic> json) => _$ProjectFileModelFromJson(json);
}

@freezed
class File with _$File {
	const factory File({
String? name,
String? url,
String? size,
	}) = _File;

	factory File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);
}