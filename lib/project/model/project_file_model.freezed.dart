// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectFileModel _$ProjectFileModelFromJson(Map<String, dynamic> json) {
  return _ProjectFileModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectFileModel {
  int? get id => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  int? get uploaded_by => throw _privateConstructorUsedError;
  String? get uploaded_by_user_name => throw _privateConstructorUsedError;
  String? get uploaded_by_user_avatar => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectFileModelCopyWith<ProjectFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectFileModelCopyWith<$Res> {
  factory $ProjectFileModelCopyWith(
          ProjectFileModel value, $Res Function(ProjectFileModel) then) =
      _$ProjectFileModelCopyWithImpl<$Res, ProjectFileModel>;
  @useResult
  $Res call(
      {int? id,
      File? file,
      int? uploaded_by,
      String? uploaded_by_user_name,
      String? uploaded_by_user_avatar,
      DateTime? created_at});

  $FileCopyWith<$Res>? get file;
}

/// @nodoc
class _$ProjectFileModelCopyWithImpl<$Res, $Val extends ProjectFileModel>
    implements $ProjectFileModelCopyWith<$Res> {
  _$ProjectFileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? uploaded_by = freezed,
    Object? uploaded_by_user_name = freezed,
    Object? uploaded_by_user_avatar = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      uploaded_by: freezed == uploaded_by
          ? _value.uploaded_by
          : uploaded_by // ignore: cast_nullable_to_non_nullable
              as int?,
      uploaded_by_user_name: freezed == uploaded_by_user_name
          ? _value.uploaded_by_user_name
          : uploaded_by_user_name // ignore: cast_nullable_to_non_nullable
              as String?,
      uploaded_by_user_avatar: freezed == uploaded_by_user_avatar
          ? _value.uploaded_by_user_avatar
          : uploaded_by_user_avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FileCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $FileCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProjectFileModelCopyWith<$Res>
    implements $ProjectFileModelCopyWith<$Res> {
  factory _$$_ProjectFileModelCopyWith(
          _$_ProjectFileModel value, $Res Function(_$_ProjectFileModel) then) =
      __$$_ProjectFileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      File? file,
      int? uploaded_by,
      String? uploaded_by_user_name,
      String? uploaded_by_user_avatar,
      DateTime? created_at});

  @override
  $FileCopyWith<$Res>? get file;
}

/// @nodoc
class __$$_ProjectFileModelCopyWithImpl<$Res>
    extends _$ProjectFileModelCopyWithImpl<$Res, _$_ProjectFileModel>
    implements _$$_ProjectFileModelCopyWith<$Res> {
  __$$_ProjectFileModelCopyWithImpl(
      _$_ProjectFileModel _value, $Res Function(_$_ProjectFileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? uploaded_by = freezed,
    Object? uploaded_by_user_name = freezed,
    Object? uploaded_by_user_avatar = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_$_ProjectFileModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      uploaded_by: freezed == uploaded_by
          ? _value.uploaded_by
          : uploaded_by // ignore: cast_nullable_to_non_nullable
              as int?,
      uploaded_by_user_name: freezed == uploaded_by_user_name
          ? _value.uploaded_by_user_name
          : uploaded_by_user_name // ignore: cast_nullable_to_non_nullable
              as String?,
      uploaded_by_user_avatar: freezed == uploaded_by_user_avatar
          ? _value.uploaded_by_user_avatar
          : uploaded_by_user_avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectFileModel implements _ProjectFileModel {
  const _$_ProjectFileModel(
      {this.id,
      this.file,
      this.uploaded_by,
      this.uploaded_by_user_name,
      this.uploaded_by_user_avatar,
      this.created_at});

  factory _$_ProjectFileModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectFileModelFromJson(json);

  @override
  final int? id;
  @override
  final File? file;
  @override
  final int? uploaded_by;
  @override
  final String? uploaded_by_user_name;
  @override
  final String? uploaded_by_user_avatar;
  @override
  final DateTime? created_at;

  @override
  String toString() {
    return 'ProjectFileModel(id: $id, file: $file, uploaded_by: $uploaded_by, uploaded_by_user_name: $uploaded_by_user_name, uploaded_by_user_avatar: $uploaded_by_user_avatar, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectFileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.uploaded_by, uploaded_by) ||
                other.uploaded_by == uploaded_by) &&
            (identical(other.uploaded_by_user_name, uploaded_by_user_name) ||
                other.uploaded_by_user_name == uploaded_by_user_name) &&
            (identical(
                    other.uploaded_by_user_avatar, uploaded_by_user_avatar) ||
                other.uploaded_by_user_avatar == uploaded_by_user_avatar) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, file, uploaded_by,
      uploaded_by_user_name, uploaded_by_user_avatar, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectFileModelCopyWith<_$_ProjectFileModel> get copyWith =>
      __$$_ProjectFileModelCopyWithImpl<_$_ProjectFileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectFileModelToJson(
      this,
    );
  }
}

abstract class _ProjectFileModel implements ProjectFileModel {
  const factory _ProjectFileModel(
      {final int? id,
      final File? file,
      final int? uploaded_by,
      final String? uploaded_by_user_name,
      final String? uploaded_by_user_avatar,
      final DateTime? created_at}) = _$_ProjectFileModel;

  factory _ProjectFileModel.fromJson(Map<String, dynamic> json) =
      _$_ProjectFileModel.fromJson;

  @override
  int? get id;
  @override
  File? get file;
  @override
  int? get uploaded_by;
  @override
  String? get uploaded_by_user_name;
  @override
  String? get uploaded_by_user_avatar;
  @override
  DateTime? get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectFileModelCopyWith<_$_ProjectFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

File _$FileFromJson(Map<String, dynamic> json) {
  return _File.fromJson(json);
}

/// @nodoc
mixin _$File {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileCopyWith<File> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileCopyWith<$Res> {
  factory $FileCopyWith(File value, $Res Function(File) then) =
      _$FileCopyWithImpl<$Res, File>;
  @useResult
  $Res call({String? name, String? url, String? size});
}

/// @nodoc
class _$FileCopyWithImpl<$Res, $Val extends File>
    implements $FileCopyWith<$Res> {
  _$FileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FileCopyWith<$Res> implements $FileCopyWith<$Res> {
  factory _$$_FileCopyWith(_$_File value, $Res Function(_$_File) then) =
      __$$_FileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url, String? size});
}

/// @nodoc
class __$$_FileCopyWithImpl<$Res> extends _$FileCopyWithImpl<$Res, _$_File>
    implements _$$_FileCopyWith<$Res> {
  __$$_FileCopyWithImpl(_$_File _value, $Res Function(_$_File) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? size = freezed,
  }) {
    return _then(_$_File(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_File implements _File {
  const _$_File({this.name, this.url, this.size});

  factory _$_File.fromJson(Map<String, dynamic> json) => _$$_FileFromJson(json);

  @override
  final String? name;
  @override
  final String? url;
  @override
  final String? size;

  @override
  String toString() {
    return 'File(name: $name, url: $url, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_File &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FileCopyWith<_$_File> get copyWith =>
      __$$_FileCopyWithImpl<_$_File>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileToJson(
      this,
    );
  }
}

abstract class _File implements File {
  const factory _File(
      {final String? name, final String? url, final String? size}) = _$_File;

  factory _File.fromJson(Map<String, dynamic> json) = _$_File.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  String? get size;
  @override
  @JsonKey(ignore: true)
  _$$_FileCopyWith<_$_File> get copyWith => throw _privateConstructorUsedError;
}
