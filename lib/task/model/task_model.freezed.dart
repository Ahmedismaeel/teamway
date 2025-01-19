// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  int? get id => throw _privateConstructorUsedError;
  int? get parent_id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  int? get assigned_to_id => throw _privateConstructorUsedError;
  String? get assigned_to_user_name => throw _privateConstructorUsedError;
  String? get assigned_to_avatar => throw _privateConstructorUsedError;
  int? get project_id => throw _privateConstructorUsedError;
  String? get project_title => throw _privateConstructorUsedError;
  String? get status_key_name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get status_color => throw _privateConstructorUsedError;
  List<Collaborators>? get collaborators => throw _privateConstructorUsedError;
  Permissions? get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call(
      {int? id,
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
      Permissions? permissions});

  $PermissionsCopyWith<$Res>? get permissions;
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parent_id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? start_date = freezed,
    Object? deadline = freezed,
    Object? assigned_to_id = freezed,
    Object? assigned_to_user_name = freezed,
    Object? assigned_to_avatar = freezed,
    Object? project_id = freezed,
    Object? project_title = freezed,
    Object? status_key_name = freezed,
    Object? status = freezed,
    Object? status_color = freezed,
    Object? collaborators = freezed,
    Object? permissions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parent_id: freezed == parent_id
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      assigned_to_id: freezed == assigned_to_id
          ? _value.assigned_to_id
          : assigned_to_id // ignore: cast_nullable_to_non_nullable
              as int?,
      assigned_to_user_name: freezed == assigned_to_user_name
          ? _value.assigned_to_user_name
          : assigned_to_user_name // ignore: cast_nullable_to_non_nullable
              as String?,
      assigned_to_avatar: freezed == assigned_to_avatar
          ? _value.assigned_to_avatar
          : assigned_to_avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      project_id: freezed == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as int?,
      project_title: freezed == project_title
          ? _value.project_title
          : project_title // ignore: cast_nullable_to_non_nullable
              as String?,
      status_key_name: freezed == status_key_name
          ? _value.status_key_name
          : status_key_name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      status_color: freezed == status_color
          ? _value.status_color
          : status_color // ignore: cast_nullable_to_non_nullable
              as String?,
      collaborators: freezed == collaborators
          ? _value.collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<Collaborators>?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Permissions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PermissionsCopyWith<$Res>? get permissions {
    if (_value.permissions == null) {
      return null;
    }

    return $PermissionsCopyWith<$Res>(_value.permissions!, (value) {
      return _then(_value.copyWith(permissions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      Permissions? permissions});

  @override
  $PermissionsCopyWith<$Res>? get permissions;
}

/// @nodoc
class __$$_TaskModelCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$_TaskModel>
    implements _$$_TaskModelCopyWith<$Res> {
  __$$_TaskModelCopyWithImpl(
      _$_TaskModel _value, $Res Function(_$_TaskModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parent_id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? start_date = freezed,
    Object? deadline = freezed,
    Object? assigned_to_id = freezed,
    Object? assigned_to_user_name = freezed,
    Object? assigned_to_avatar = freezed,
    Object? project_id = freezed,
    Object? project_title = freezed,
    Object? status_key_name = freezed,
    Object? status = freezed,
    Object? status_color = freezed,
    Object? collaborators = freezed,
    Object? permissions = freezed,
  }) {
    return _then(_$_TaskModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parent_id: freezed == parent_id
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      assigned_to_id: freezed == assigned_to_id
          ? _value.assigned_to_id
          : assigned_to_id // ignore: cast_nullable_to_non_nullable
              as int?,
      assigned_to_user_name: freezed == assigned_to_user_name
          ? _value.assigned_to_user_name
          : assigned_to_user_name // ignore: cast_nullable_to_non_nullable
              as String?,
      assigned_to_avatar: freezed == assigned_to_avatar
          ? _value.assigned_to_avatar
          : assigned_to_avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      project_id: freezed == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as int?,
      project_title: freezed == project_title
          ? _value.project_title
          : project_title // ignore: cast_nullable_to_non_nullable
              as String?,
      status_key_name: freezed == status_key_name
          ? _value.status_key_name
          : status_key_name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      status_color: freezed == status_color
          ? _value.status_color
          : status_color // ignore: cast_nullable_to_non_nullable
              as String?,
      collaborators: freezed == collaborators
          ? _value._collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<Collaborators>?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Permissions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskModel implements _TaskModel {
  const _$_TaskModel(
      {this.id,
      this.parent_id,
      this.title,
      this.description,
      this.start_date,
      this.deadline,
      this.assigned_to_id,
      this.assigned_to_user_name,
      this.assigned_to_avatar,
      this.project_id,
      this.project_title,
      this.status_key_name,
      this.status,
      this.status_color,
      final List<Collaborators>? collaborators,
      this.permissions})
      : _collaborators = collaborators;

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

  @override
  final int? id;
  @override
  final int? parent_id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? start_date;
  @override
  final DateTime? deadline;
  @override
  final int? assigned_to_id;
  @override
  final String? assigned_to_user_name;
  @override
  final String? assigned_to_avatar;
  @override
  final int? project_id;
  @override
  final String? project_title;
  @override
  final String? status_key_name;
  @override
  final String? status;
  @override
  final String? status_color;
  final List<Collaborators>? _collaborators;
  @override
  List<Collaborators>? get collaborators {
    final value = _collaborators;
    if (value == null) return null;
    if (_collaborators is EqualUnmodifiableListView) return _collaborators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Permissions? permissions;

  @override
  String toString() {
    return 'TaskModel(id: $id, parent_id: $parent_id, title: $title, description: $description, start_date: $start_date, deadline: $deadline, assigned_to_id: $assigned_to_id, assigned_to_user_name: $assigned_to_user_name, assigned_to_avatar: $assigned_to_avatar, project_id: $project_id, project_title: $project_title, status_key_name: $status_key_name, status: $status, status_color: $status_color, collaborators: $collaborators, permissions: $permissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent_id, parent_id) ||
                other.parent_id == parent_id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.assigned_to_id, assigned_to_id) ||
                other.assigned_to_id == assigned_to_id) &&
            (identical(other.assigned_to_user_name, assigned_to_user_name) ||
                other.assigned_to_user_name == assigned_to_user_name) &&
            (identical(other.assigned_to_avatar, assigned_to_avatar) ||
                other.assigned_to_avatar == assigned_to_avatar) &&
            (identical(other.project_id, project_id) ||
                other.project_id == project_id) &&
            (identical(other.project_title, project_title) ||
                other.project_title == project_title) &&
            (identical(other.status_key_name, status_key_name) ||
                other.status_key_name == status_key_name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.status_color, status_color) ||
                other.status_color == status_color) &&
            const DeepCollectionEquality()
                .equals(other._collaborators, _collaborators) &&
            (identical(other.permissions, permissions) ||
                other.permissions == permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent_id,
      title,
      description,
      start_date,
      deadline,
      assigned_to_id,
      assigned_to_user_name,
      assigned_to_avatar,
      project_id,
      project_title,
      status_key_name,
      status,
      status_color,
      const DeepCollectionEquality().hash(_collaborators),
      permissions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      __$$_TaskModelCopyWithImpl<_$_TaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskModelToJson(
      this,
    );
  }
}

abstract class _TaskModel implements TaskModel {
  const factory _TaskModel(
      {final int? id,
      final int? parent_id,
      final String? title,
      final String? description,
      final String? start_date,
      final DateTime? deadline,
      final int? assigned_to_id,
      final String? assigned_to_user_name,
      final String? assigned_to_avatar,
      final int? project_id,
      final String? project_title,
      final String? status_key_name,
      final String? status,
      final String? status_color,
      final List<Collaborators>? collaborators,
      final Permissions? permissions}) = _$_TaskModel;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  int? get id;
  @override
  int? get parent_id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get start_date;
  @override
  DateTime? get deadline;
  @override
  int? get assigned_to_id;
  @override
  String? get assigned_to_user_name;
  @override
  String? get assigned_to_avatar;
  @override
  int? get project_id;
  @override
  String? get project_title;
  @override
  String? get status_key_name;
  @override
  String? get status;
  @override
  String? get status_color;
  @override
  List<Collaborators>? get collaborators;
  @override
  Permissions? get permissions;
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Collaborators _$CollaboratorsFromJson(Map<String, dynamic> json) {
  return _Collaborators.fromJson(json);
}

/// @nodoc
mixin _$Collaborators {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollaboratorsCopyWith<Collaborators> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaboratorsCopyWith<$Res> {
  factory $CollaboratorsCopyWith(
          Collaborators value, $Res Function(Collaborators) then) =
      _$CollaboratorsCopyWithImpl<$Res, Collaborators>;
  @useResult
  $Res call({int? id, String? name, String? avatar});
}

/// @nodoc
class _$CollaboratorsCopyWithImpl<$Res, $Val extends Collaborators>
    implements $CollaboratorsCopyWith<$Res> {
  _$CollaboratorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollaboratorsCopyWith<$Res>
    implements $CollaboratorsCopyWith<$Res> {
  factory _$$_CollaboratorsCopyWith(
          _$_Collaborators value, $Res Function(_$_Collaborators) then) =
      __$$_CollaboratorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? avatar});
}

/// @nodoc
class __$$_CollaboratorsCopyWithImpl<$Res>
    extends _$CollaboratorsCopyWithImpl<$Res, _$_Collaborators>
    implements _$$_CollaboratorsCopyWith<$Res> {
  __$$_CollaboratorsCopyWithImpl(
      _$_Collaborators _value, $Res Function(_$_Collaborators) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_Collaborators(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Collaborators implements _Collaborators {
  const _$_Collaborators({this.id, this.name, this.avatar});

  factory _$_Collaborators.fromJson(Map<String, dynamic> json) =>
      _$$_CollaboratorsFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'Collaborators(id: $id, name: $name, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Collaborators &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollaboratorsCopyWith<_$_Collaborators> get copyWith =>
      __$$_CollaboratorsCopyWithImpl<_$_Collaborators>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollaboratorsToJson(
      this,
    );
  }
}

abstract class _Collaborators implements Collaborators {
  const factory _Collaborators(
      {final int? id,
      final String? name,
      final String? avatar}) = _$_Collaborators;

  factory _Collaborators.fromJson(Map<String, dynamic> json) =
      _$_Collaborators.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_CollaboratorsCopyWith<_$_Collaborators> get copyWith =>
      throw _privateConstructorUsedError;
}

Permissions _$PermissionsFromJson(Map<String, dynamic> json) {
  return _Permissions.fromJson(json);
}

/// @nodoc
mixin _$Permissions {
  bool? get can_edit => throw _privateConstructorUsedError;
  bool? get can_delete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionsCopyWith<Permissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsCopyWith<$Res> {
  factory $PermissionsCopyWith(
          Permissions value, $Res Function(Permissions) then) =
      _$PermissionsCopyWithImpl<$Res, Permissions>;
  @useResult
  $Res call({bool? can_edit, bool? can_delete});
}

/// @nodoc
class _$PermissionsCopyWithImpl<$Res, $Val extends Permissions>
    implements $PermissionsCopyWith<$Res> {
  _$PermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? can_edit = freezed,
    Object? can_delete = freezed,
  }) {
    return _then(_value.copyWith(
      can_edit: freezed == can_edit
          ? _value.can_edit
          : can_edit // ignore: cast_nullable_to_non_nullable
              as bool?,
      can_delete: freezed == can_delete
          ? _value.can_delete
          : can_delete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PermissionsCopyWith<$Res>
    implements $PermissionsCopyWith<$Res> {
  factory _$$_PermissionsCopyWith(
          _$_Permissions value, $Res Function(_$_Permissions) then) =
      __$$_PermissionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? can_edit, bool? can_delete});
}

/// @nodoc
class __$$_PermissionsCopyWithImpl<$Res>
    extends _$PermissionsCopyWithImpl<$Res, _$_Permissions>
    implements _$$_PermissionsCopyWith<$Res> {
  __$$_PermissionsCopyWithImpl(
      _$_Permissions _value, $Res Function(_$_Permissions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? can_edit = freezed,
    Object? can_delete = freezed,
  }) {
    return _then(_$_Permissions(
      can_edit: freezed == can_edit
          ? _value.can_edit
          : can_edit // ignore: cast_nullable_to_non_nullable
              as bool?,
      can_delete: freezed == can_delete
          ? _value.can_delete
          : can_delete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Permissions implements _Permissions {
  const _$_Permissions({this.can_edit, this.can_delete});

  factory _$_Permissions.fromJson(Map<String, dynamic> json) =>
      _$$_PermissionsFromJson(json);

  @override
  final bool? can_edit;
  @override
  final bool? can_delete;

  @override
  String toString() {
    return 'Permissions(can_edit: $can_edit, can_delete: $can_delete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Permissions &&
            (identical(other.can_edit, can_edit) ||
                other.can_edit == can_edit) &&
            (identical(other.can_delete, can_delete) ||
                other.can_delete == can_delete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, can_edit, can_delete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermissionsCopyWith<_$_Permissions> get copyWith =>
      __$$_PermissionsCopyWithImpl<_$_Permissions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PermissionsToJson(
      this,
    );
  }
}

abstract class _Permissions implements Permissions {
  const factory _Permissions({final bool? can_edit, final bool? can_delete}) =
      _$_Permissions;

  factory _Permissions.fromJson(Map<String, dynamic> json) =
      _$_Permissions.fromJson;

  @override
  bool? get can_edit;
  @override
  bool? get can_delete;
  @override
  @JsonKey(ignore: true)
  _$$_PermissionsCopyWith<_$_Permissions> get copyWith =>
      throw _privateConstructorUsedError;
}
