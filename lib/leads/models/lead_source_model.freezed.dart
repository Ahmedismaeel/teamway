// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_source_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeadSourceModel _$LeadSourceModelFromJson(Map<String, dynamic> json) {
  return _LeadSourceModel.fromJson(json);
}

/// @nodoc
mixin _$LeadSourceModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadSourceModelCopyWith<LeadSourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadSourceModelCopyWith<$Res> {
  factory $LeadSourceModelCopyWith(
          LeadSourceModel value, $Res Function(LeadSourceModel) then) =
      _$LeadSourceModelCopyWithImpl<$Res, LeadSourceModel>;
  @useResult
  $Res call({int? id, String? title});
}

/// @nodoc
class _$LeadSourceModelCopyWithImpl<$Res, $Val extends LeadSourceModel>
    implements $LeadSourceModelCopyWith<$Res> {
  _$LeadSourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeadSourceModelCopyWith<$Res>
    implements $LeadSourceModelCopyWith<$Res> {
  factory _$$_LeadSourceModelCopyWith(
          _$_LeadSourceModel value, $Res Function(_$_LeadSourceModel) then) =
      __$$_LeadSourceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title});
}

/// @nodoc
class __$$_LeadSourceModelCopyWithImpl<$Res>
    extends _$LeadSourceModelCopyWithImpl<$Res, _$_LeadSourceModel>
    implements _$$_LeadSourceModelCopyWith<$Res> {
  __$$_LeadSourceModelCopyWithImpl(
      _$_LeadSourceModel _value, $Res Function(_$_LeadSourceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_LeadSourceModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeadSourceModel implements _LeadSourceModel {
  const _$_LeadSourceModel({this.id, this.title});

  factory _$_LeadSourceModel.fromJson(Map<String, dynamic> json) =>
      _$$_LeadSourceModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'LeadSourceModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeadSourceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeadSourceModelCopyWith<_$_LeadSourceModel> get copyWith =>
      __$$_LeadSourceModelCopyWithImpl<_$_LeadSourceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeadSourceModelToJson(
      this,
    );
  }
}

abstract class _LeadSourceModel implements LeadSourceModel {
  const factory _LeadSourceModel({final int? id, final String? title}) =
      _$_LeadSourceModel;

  factory _LeadSourceModel.fromJson(Map<String, dynamic> json) =
      _$_LeadSourceModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_LeadSourceModelCopyWith<_$_LeadSourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
