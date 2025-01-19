// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_estimate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectEstimateModel _$ProjectEstimateModelFromJson(Map<String, dynamic> json) {
  return _ProjectEstimateModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectEstimateModel {
  int? get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  List<LeadEstimateModel>? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectEstimateModelCopyWith<ProjectEstimateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEstimateModelCopyWith<$Res> {
  factory $ProjectEstimateModelCopyWith(ProjectEstimateModel value,
          $Res Function(ProjectEstimateModel) then) =
      _$ProjectEstimateModelCopyWithImpl<$Res, ProjectEstimateModel>;
  @useResult
  $Res call({int? page, int? size, List<LeadEstimateModel>? content});
}

/// @nodoc
class _$ProjectEstimateModelCopyWithImpl<$Res,
        $Val extends ProjectEstimateModel>
    implements $ProjectEstimateModelCopyWith<$Res> {
  _$ProjectEstimateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<LeadEstimateModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectEstimateModelCopyWith<$Res>
    implements $ProjectEstimateModelCopyWith<$Res> {
  factory _$$_ProjectEstimateModelCopyWith(_$_ProjectEstimateModel value,
          $Res Function(_$_ProjectEstimateModel) then) =
      __$$_ProjectEstimateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page, int? size, List<LeadEstimateModel>? content});
}

/// @nodoc
class __$$_ProjectEstimateModelCopyWithImpl<$Res>
    extends _$ProjectEstimateModelCopyWithImpl<$Res, _$_ProjectEstimateModel>
    implements _$$_ProjectEstimateModelCopyWith<$Res> {
  __$$_ProjectEstimateModelCopyWithImpl(_$_ProjectEstimateModel _value,
      $Res Function(_$_ProjectEstimateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_ProjectEstimateModel(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<LeadEstimateModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectEstimateModel implements _ProjectEstimateModel {
  const _$_ProjectEstimateModel(
      {this.page, this.size, final List<LeadEstimateModel>? content})
      : _content = content;

  factory _$_ProjectEstimateModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectEstimateModelFromJson(json);

  @override
  final int? page;
  @override
  final int? size;
  final List<LeadEstimateModel>? _content;
  @override
  List<LeadEstimateModel>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProjectEstimateModel(page: $page, size: $size, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectEstimateModel &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, size, const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectEstimateModelCopyWith<_$_ProjectEstimateModel> get copyWith =>
      __$$_ProjectEstimateModelCopyWithImpl<_$_ProjectEstimateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectEstimateModelToJson(
      this,
    );
  }
}

abstract class _ProjectEstimateModel implements ProjectEstimateModel {
  const factory _ProjectEstimateModel(
      {final int? page,
      final int? size,
      final List<LeadEstimateModel>? content}) = _$_ProjectEstimateModel;

  factory _ProjectEstimateModel.fromJson(Map<String, dynamic> json) =
      _$_ProjectEstimateModel.fromJson;

  @override
  int? get page;
  @override
  int? get size;
  @override
  List<LeadEstimateModel>? get content;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectEstimateModelCopyWith<_$_ProjectEstimateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
