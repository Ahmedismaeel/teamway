// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DropdownModel _$DropdownModelFromJson(Map<String, dynamic> json) {
  return _DropdownModel.fromJson(json);
}

/// @nodoc
mixin _$DropdownModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DropdownModelCopyWith<DropdownModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownModelCopyWith<$Res> {
  factory $DropdownModelCopyWith(
          DropdownModel value, $Res Function(DropdownModel) then) =
      _$DropdownModelCopyWithImpl<$Res, DropdownModel>;
  @useResult
  $Res call({int? id, String? title});
}

/// @nodoc
class _$DropdownModelCopyWithImpl<$Res, $Val extends DropdownModel>
    implements $DropdownModelCopyWith<$Res> {
  _$DropdownModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_DropdownModelCopyWith<$Res>
    implements $DropdownModelCopyWith<$Res> {
  factory _$$_DropdownModelCopyWith(
          _$_DropdownModel value, $Res Function(_$_DropdownModel) then) =
      __$$_DropdownModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title});
}

/// @nodoc
class __$$_DropdownModelCopyWithImpl<$Res>
    extends _$DropdownModelCopyWithImpl<$Res, _$_DropdownModel>
    implements _$$_DropdownModelCopyWith<$Res> {
  __$$_DropdownModelCopyWithImpl(
      _$_DropdownModel _value, $Res Function(_$_DropdownModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_DropdownModel(
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
class _$_DropdownModel implements _DropdownModel {
  const _$_DropdownModel({this.id, this.title});

  factory _$_DropdownModel.fromJson(Map<String, dynamic> json) =>
      _$$_DropdownModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'DropdownModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropdownModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropdownModelCopyWith<_$_DropdownModel> get copyWith =>
      __$$_DropdownModelCopyWithImpl<_$_DropdownModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DropdownModelToJson(
      this,
    );
  }
}

abstract class _DropdownModel implements DropdownModel {
  const factory _DropdownModel({final int? id, final String? title}) =
      _$_DropdownModel;

  factory _DropdownModel.fromJson(Map<String, dynamic> json) =
      _$_DropdownModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_DropdownModelCopyWith<_$_DropdownModel> get copyWith =>
      throw _privateConstructorUsedError;
}
