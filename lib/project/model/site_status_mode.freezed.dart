// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_status_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SiteStatusModel _$SiteStatusModelFromJson(Map<String, dynamic> json) {
  return _SiteStatusModel.fromJson(json);
}

/// @nodoc
mixin _$SiteStatusModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SiteStatusModelCopyWith<SiteStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteStatusModelCopyWith<$Res> {
  factory $SiteStatusModelCopyWith(
          SiteStatusModel value, $Res Function(SiteStatusModel) then) =
      _$SiteStatusModelCopyWithImpl<$Res, SiteStatusModel>;
  @useResult
  $Res call({int? id, String? title, String? color});
}

/// @nodoc
class _$SiteStatusModelCopyWithImpl<$Res, $Val extends SiteStatusModel>
    implements $SiteStatusModelCopyWith<$Res> {
  _$SiteStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? color = freezed,
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
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SiteStatusModelCopyWith<$Res>
    implements $SiteStatusModelCopyWith<$Res> {
  factory _$$_SiteStatusModelCopyWith(
          _$_SiteStatusModel value, $Res Function(_$_SiteStatusModel) then) =
      __$$_SiteStatusModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? color});
}

/// @nodoc
class __$$_SiteStatusModelCopyWithImpl<$Res>
    extends _$SiteStatusModelCopyWithImpl<$Res, _$_SiteStatusModel>
    implements _$$_SiteStatusModelCopyWith<$Res> {
  __$$_SiteStatusModelCopyWithImpl(
      _$_SiteStatusModel _value, $Res Function(_$_SiteStatusModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_SiteStatusModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SiteStatusModel implements _SiteStatusModel {
  const _$_SiteStatusModel({this.id, this.title, this.color});

  factory _$_SiteStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_SiteStatusModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? color;

  @override
  String toString() {
    return 'SiteStatusModel(id: $id, title: $title, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SiteStatusModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SiteStatusModelCopyWith<_$_SiteStatusModel> get copyWith =>
      __$$_SiteStatusModelCopyWithImpl<_$_SiteStatusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SiteStatusModelToJson(
      this,
    );
  }
}

abstract class _SiteStatusModel implements SiteStatusModel {
  const factory _SiteStatusModel(
      {final int? id,
      final String? title,
      final String? color}) = _$_SiteStatusModel;

  factory _SiteStatusModel.fromJson(Map<String, dynamic> json) =
      _$_SiteStatusModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$_SiteStatusModelCopyWith<_$_SiteStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}
