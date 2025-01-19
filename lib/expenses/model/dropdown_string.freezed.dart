// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_string.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DropDownStringModel _$DropDownStringModelFromJson(Map<String, dynamic> json) {
  return _DropDownStringModel.fromJson(json);
}

/// @nodoc
mixin _$DropDownStringModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DropDownStringModelCopyWith<DropDownStringModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropDownStringModelCopyWith<$Res> {
  factory $DropDownStringModelCopyWith(
          DropDownStringModel value, $Res Function(DropDownStringModel) then) =
      _$DropDownStringModelCopyWithImpl<$Res, DropDownStringModel>;
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class _$DropDownStringModelCopyWithImpl<$Res, $Val extends DropDownStringModel>
    implements $DropDownStringModelCopyWith<$Res> {
  _$DropDownStringModelCopyWithImpl(this._value, this._then);

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
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DropDownStringModelCopyWith<$Res>
    implements $DropDownStringModelCopyWith<$Res> {
  factory _$$_DropDownStringModelCopyWith(_$_DropDownStringModel value,
          $Res Function(_$_DropDownStringModel) then) =
      __$$_DropDownStringModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class __$$_DropDownStringModelCopyWithImpl<$Res>
    extends _$DropDownStringModelCopyWithImpl<$Res, _$_DropDownStringModel>
    implements _$$_DropDownStringModelCopyWith<$Res> {
  __$$_DropDownStringModelCopyWithImpl(_$_DropDownStringModel _value,
      $Res Function(_$_DropDownStringModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_DropDownStringModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DropDownStringModel implements _DropDownStringModel {
  const _$_DropDownStringModel({this.id, this.title});

  factory _$_DropDownStringModel.fromJson(Map<String, dynamic> json) =>
      _$$_DropDownStringModelFromJson(json);

  @override
  final String? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'DropDownStringModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropDownStringModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropDownStringModelCopyWith<_$_DropDownStringModel> get copyWith =>
      __$$_DropDownStringModelCopyWithImpl<_$_DropDownStringModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DropDownStringModelToJson(
      this,
    );
  }
}

abstract class _DropDownStringModel implements DropDownStringModel {
  const factory _DropDownStringModel({final String? id, final String? title}) =
      _$_DropDownStringModel;

  factory _DropDownStringModel.fromJson(Map<String, dynamic> json) =
      _$_DropDownStringModel.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_DropDownStringModelCopyWith<_$_DropDownStringModel> get copyWith =>
      throw _privateConstructorUsedError;
}
