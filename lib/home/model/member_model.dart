import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'member_model.freezed.dart';
part 'member_model.g.dart';

@freezed
class MemberModel with _$MemberModel {
	const factory MemberModel({
int? id,
String? title,
	}) = _MemberModel;

	factory MemberModel.fromJson(Map<String, dynamic> json) => _$MemberModelFromJson(json);
}