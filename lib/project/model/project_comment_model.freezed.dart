// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectCommentModel _$ProjectCommentModelFromJson(Map<String, dynamic> json) {
  return _ProjectCommentModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectCommentModel {
  int? get id => throw _privateConstructorUsedError;
  int? get project_id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get parent_id => throw _privateConstructorUsedError;
  int? get task_id => throw _privateConstructorUsedError;
  int? get file_id => throw _privateConstructorUsedError;
  int? get customer_feedback_id => throw _privateConstructorUsedError;
  List<Files>? get files => throw _privateConstructorUsedError;
  int? get created_by => throw _privateConstructorUsedError;
  String? get created_by_user_name => throw _privateConstructorUsedError;
  String? get created_by_avatar => throw _privateConstructorUsedError;
  int? get total_replies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCommentModelCopyWith<ProjectCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCommentModelCopyWith<$Res> {
  factory $ProjectCommentModelCopyWith(
          ProjectCommentModel value, $Res Function(ProjectCommentModel) then) =
      _$ProjectCommentModelCopyWithImpl<$Res, ProjectCommentModel>;
  @useResult
  $Res call(
      {int? id,
      int? project_id,
      DateTime? created_at,
      String? description,
      int? parent_id,
      int? task_id,
      int? file_id,
      int? customer_feedback_id,
      List<Files>? files,
      int? created_by,
      String? created_by_user_name,
      String? created_by_avatar,
      int? total_replies});
}

/// @nodoc
class _$ProjectCommentModelCopyWithImpl<$Res, $Val extends ProjectCommentModel>
    implements $ProjectCommentModelCopyWith<$Res> {
  _$ProjectCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? project_id = freezed,
    Object? created_at = freezed,
    Object? description = freezed,
    Object? parent_id = freezed,
    Object? task_id = freezed,
    Object? file_id = freezed,
    Object? customer_feedback_id = freezed,
    Object? files = freezed,
    Object? created_by = freezed,
    Object? created_by_user_name = freezed,
    Object? created_by_avatar = freezed,
    Object? total_replies = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      project_id: freezed == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      parent_id: freezed == parent_id
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as int?,
      task_id: freezed == task_id
          ? _value.task_id
          : task_id // ignore: cast_nullable_to_non_nullable
              as int?,
      file_id: freezed == file_id
          ? _value.file_id
          : file_id // ignore: cast_nullable_to_non_nullable
              as int?,
      customer_feedback_id: freezed == customer_feedback_id
          ? _value.customer_feedback_id
          : customer_feedback_id // ignore: cast_nullable_to_non_nullable
              as int?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<Files>?,
      created_by: freezed == created_by
          ? _value.created_by
          : created_by // ignore: cast_nullable_to_non_nullable
              as int?,
      created_by_user_name: freezed == created_by_user_name
          ? _value.created_by_user_name
          : created_by_user_name // ignore: cast_nullable_to_non_nullable
              as String?,
      created_by_avatar: freezed == created_by_avatar
          ? _value.created_by_avatar
          : created_by_avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      total_replies: freezed == total_replies
          ? _value.total_replies
          : total_replies // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectCommentModelCopyWith<$Res>
    implements $ProjectCommentModelCopyWith<$Res> {
  factory _$$_ProjectCommentModelCopyWith(_$_ProjectCommentModel value,
          $Res Function(_$_ProjectCommentModel) then) =
      __$$_ProjectCommentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? project_id,
      DateTime? created_at,
      String? description,
      int? parent_id,
      int? task_id,
      int? file_id,
      int? customer_feedback_id,
      List<Files>? files,
      int? created_by,
      String? created_by_user_name,
      String? created_by_avatar,
      int? total_replies});
}

/// @nodoc
class __$$_ProjectCommentModelCopyWithImpl<$Res>
    extends _$ProjectCommentModelCopyWithImpl<$Res, _$_ProjectCommentModel>
    implements _$$_ProjectCommentModelCopyWith<$Res> {
  __$$_ProjectCommentModelCopyWithImpl(_$_ProjectCommentModel _value,
      $Res Function(_$_ProjectCommentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? project_id = freezed,
    Object? created_at = freezed,
    Object? description = freezed,
    Object? parent_id = freezed,
    Object? task_id = freezed,
    Object? file_id = freezed,
    Object? customer_feedback_id = freezed,
    Object? files = freezed,
    Object? created_by = freezed,
    Object? created_by_user_name = freezed,
    Object? created_by_avatar = freezed,
    Object? total_replies = freezed,
  }) {
    return _then(_$_ProjectCommentModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      project_id: freezed == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      parent_id: freezed == parent_id
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as int?,
      task_id: freezed == task_id
          ? _value.task_id
          : task_id // ignore: cast_nullable_to_non_nullable
              as int?,
      file_id: freezed == file_id
          ? _value.file_id
          : file_id // ignore: cast_nullable_to_non_nullable
              as int?,
      customer_feedback_id: freezed == customer_feedback_id
          ? _value.customer_feedback_id
          : customer_feedback_id // ignore: cast_nullable_to_non_nullable
              as int?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<Files>?,
      created_by: freezed == created_by
          ? _value.created_by
          : created_by // ignore: cast_nullable_to_non_nullable
              as int?,
      created_by_user_name: freezed == created_by_user_name
          ? _value.created_by_user_name
          : created_by_user_name // ignore: cast_nullable_to_non_nullable
              as String?,
      created_by_avatar: freezed == created_by_avatar
          ? _value.created_by_avatar
          : created_by_avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      total_replies: freezed == total_replies
          ? _value.total_replies
          : total_replies // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectCommentModel implements _ProjectCommentModel {
  const _$_ProjectCommentModel(
      {this.id,
      this.project_id,
      this.created_at,
      this.description,
      this.parent_id,
      this.task_id,
      this.file_id,
      this.customer_feedback_id,
      final List<Files>? files,
      this.created_by,
      this.created_by_user_name,
      this.created_by_avatar,
      this.total_replies})
      : _files = files;

  factory _$_ProjectCommentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectCommentModelFromJson(json);

  @override
  final int? id;
  @override
  final int? project_id;
  @override
  final DateTime? created_at;
  @override
  final String? description;
  @override
  final int? parent_id;
  @override
  final int? task_id;
  @override
  final int? file_id;
  @override
  final int? customer_feedback_id;
  final List<Files>? _files;
  @override
  List<Files>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? created_by;
  @override
  final String? created_by_user_name;
  @override
  final String? created_by_avatar;
  @override
  final int? total_replies;

  @override
  String toString() {
    return 'ProjectCommentModel(id: $id, project_id: $project_id, created_at: $created_at, description: $description, parent_id: $parent_id, task_id: $task_id, file_id: $file_id, customer_feedback_id: $customer_feedback_id, files: $files, created_by: $created_by, created_by_user_name: $created_by_user_name, created_by_avatar: $created_by_avatar, total_replies: $total_replies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectCommentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.project_id, project_id) ||
                other.project_id == project_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.parent_id, parent_id) ||
                other.parent_id == parent_id) &&
            (identical(other.task_id, task_id) || other.task_id == task_id) &&
            (identical(other.file_id, file_id) || other.file_id == file_id) &&
            (identical(other.customer_feedback_id, customer_feedback_id) ||
                other.customer_feedback_id == customer_feedback_id) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.created_by, created_by) ||
                other.created_by == created_by) &&
            (identical(other.created_by_user_name, created_by_user_name) ||
                other.created_by_user_name == created_by_user_name) &&
            (identical(other.created_by_avatar, created_by_avatar) ||
                other.created_by_avatar == created_by_avatar) &&
            (identical(other.total_replies, total_replies) ||
                other.total_replies == total_replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      project_id,
      created_at,
      description,
      parent_id,
      task_id,
      file_id,
      customer_feedback_id,
      const DeepCollectionEquality().hash(_files),
      created_by,
      created_by_user_name,
      created_by_avatar,
      total_replies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCommentModelCopyWith<_$_ProjectCommentModel> get copyWith =>
      __$$_ProjectCommentModelCopyWithImpl<_$_ProjectCommentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectCommentModelToJson(
      this,
    );
  }
}

abstract class _ProjectCommentModel implements ProjectCommentModel {
  const factory _ProjectCommentModel(
      {final int? id,
      final int? project_id,
      final DateTime? created_at,
      final String? description,
      final int? parent_id,
      final int? task_id,
      final int? file_id,
      final int? customer_feedback_id,
      final List<Files>? files,
      final int? created_by,
      final String? created_by_user_name,
      final String? created_by_avatar,
      final int? total_replies}) = _$_ProjectCommentModel;

  factory _ProjectCommentModel.fromJson(Map<String, dynamic> json) =
      _$_ProjectCommentModel.fromJson;

  @override
  int? get id;
  @override
  int? get project_id;
  @override
  DateTime? get created_at;
  @override
  String? get description;
  @override
  int? get parent_id;
  @override
  int? get task_id;
  @override
  int? get file_id;
  @override
  int? get customer_feedback_id;
  @override
  List<Files>? get files;
  @override
  int? get created_by;
  @override
  String? get created_by_user_name;
  @override
  String? get created_by_avatar;
  @override
  int? get total_replies;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCommentModelCopyWith<_$_ProjectCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Files _$FilesFromJson(Map<String, dynamic> json) {
  return _Files.fromJson(json);
}

/// @nodoc
mixin _$Files {
  String? get file_name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilesCopyWith<Files> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesCopyWith<$Res> {
  factory $FilesCopyWith(Files value, $Res Function(Files) then) =
      _$FilesCopyWithImpl<$Res, Files>;
  @useResult
  $Res call({String? file_name, String? url, String? thumbnail});
}

/// @nodoc
class _$FilesCopyWithImpl<$Res, $Val extends Files>
    implements $FilesCopyWith<$Res> {
  _$FilesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file_name = freezed,
    Object? url = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      file_name: freezed == file_name
          ? _value.file_name
          : file_name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilesCopyWith<$Res> implements $FilesCopyWith<$Res> {
  factory _$$_FilesCopyWith(_$_Files value, $Res Function(_$_Files) then) =
      __$$_FilesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? file_name, String? url, String? thumbnail});
}

/// @nodoc
class __$$_FilesCopyWithImpl<$Res> extends _$FilesCopyWithImpl<$Res, _$_Files>
    implements _$$_FilesCopyWith<$Res> {
  __$$_FilesCopyWithImpl(_$_Files _value, $Res Function(_$_Files) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file_name = freezed,
    Object? url = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_Files(
      file_name: freezed == file_name
          ? _value.file_name
          : file_name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Files implements _Files {
  const _$_Files({this.file_name, this.url, this.thumbnail});

  factory _$_Files.fromJson(Map<String, dynamic> json) =>
      _$$_FilesFromJson(json);

  @override
  final String? file_name;
  @override
  final String? url;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'Files(file_name: $file_name, url: $url, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Files &&
            (identical(other.file_name, file_name) ||
                other.file_name == file_name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, file_name, url, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilesCopyWith<_$_Files> get copyWith =>
      __$$_FilesCopyWithImpl<_$_Files>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilesToJson(
      this,
    );
  }
}

abstract class _Files implements Files {
  const factory _Files(
      {final String? file_name,
      final String? url,
      final String? thumbnail}) = _$_Files;

  factory _Files.fromJson(Map<String, dynamic> json) = _$_Files.fromJson;

  @override
  String? get file_name;
  @override
  String? get url;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_FilesCopyWith<_$_Files> get copyWith =>
      throw _privateConstructorUsedError;
}
