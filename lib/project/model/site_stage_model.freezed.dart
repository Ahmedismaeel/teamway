// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_stage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SiteStageModel _$SiteStageModelFromJson(Map<String, dynamic> json) {
  return _SiteStageModel.fromJson(json);
}

/// @nodoc
mixin _$SiteStageModel {
  int? get id => throw _privateConstructorUsedError;
  String? get site_status_id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SiteStageModelCopyWith<SiteStageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteStageModelCopyWith<$Res> {
  factory $SiteStageModelCopyWith(
          SiteStageModel value, $Res Function(SiteStageModel) then) =
      _$SiteStageModelCopyWithImpl<$Res, SiteStageModel>;
  @useResult
  $Res call({int? id, String? site_status_id, String? title, String? color});
}

/// @nodoc
class _$SiteStageModelCopyWithImpl<$Res, $Val extends SiteStageModel>
    implements $SiteStageModelCopyWith<$Res> {
  _$SiteStageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? site_status_id = freezed,
    Object? title = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      site_status_id: freezed == site_status_id
          ? _value.site_status_id
          : site_status_id // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_SiteStageModelCopyWith<$Res>
    implements $SiteStageModelCopyWith<$Res> {
  factory _$$_SiteStageModelCopyWith(
          _$_SiteStageModel value, $Res Function(_$_SiteStageModel) then) =
      __$$_SiteStageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? site_status_id, String? title, String? color});
}

/// @nodoc
class __$$_SiteStageModelCopyWithImpl<$Res>
    extends _$SiteStageModelCopyWithImpl<$Res, _$_SiteStageModel>
    implements _$$_SiteStageModelCopyWith<$Res> {
  __$$_SiteStageModelCopyWithImpl(
      _$_SiteStageModel _value, $Res Function(_$_SiteStageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? site_status_id = freezed,
    Object? title = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_SiteStageModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      site_status_id: freezed == site_status_id
          ? _value.site_status_id
          : site_status_id // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_SiteStageModel implements _SiteStageModel {
  const _$_SiteStageModel(
      {this.id, this.site_status_id, this.title, this.color});

  factory _$_SiteStageModel.fromJson(Map<String, dynamic> json) =>
      _$$_SiteStageModelFromJson(json);

  @override
  final int? id;
  @override
  final String? site_status_id;
  @override
  final String? title;
  @override
  final String? color;

  @override
  String toString() {
    return 'SiteStageModel(id: $id, site_status_id: $site_status_id, title: $title, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SiteStageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.site_status_id, site_status_id) ||
                other.site_status_id == site_status_id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, site_status_id, title, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SiteStageModelCopyWith<_$_SiteStageModel> get copyWith =>
      __$$_SiteStageModelCopyWithImpl<_$_SiteStageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SiteStageModelToJson(
      this,
    );
  }
}

abstract class _SiteStageModel implements SiteStageModel {
  const factory _SiteStageModel(
      {final int? id,
      final String? site_status_id,
      final String? title,
      final String? color}) = _$_SiteStageModel;

  factory _SiteStageModel.fromJson(Map<String, dynamic> json) =
      _$_SiteStageModel.fromJson;

  @override
  int? get id;
  @override
  String? get site_status_id;
  @override
  String? get title;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$_SiteStageModelCopyWith<_$_SiteStageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
