// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_operation_model_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateOperationRequestModel _$UpdateOperationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateOperationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateOperationRequestModel {
  String? get name => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateOperationRequestModelCopyWith<UpdateOperationRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOperationRequestModelCopyWith<$Res> {
  factory $UpdateOperationRequestModelCopyWith(
          UpdateOperationRequestModel value,
          $Res Function(UpdateOperationRequestModel) then) =
      _$UpdateOperationRequestModelCopyWithImpl<$Res,
          UpdateOperationRequestModel>;
  @useResult
  $Res call({String? name, int? value});
}

/// @nodoc
class _$UpdateOperationRequestModelCopyWithImpl<$Res,
        $Val extends UpdateOperationRequestModel>
    implements $UpdateOperationRequestModelCopyWith<$Res> {
  _$UpdateOperationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateOperationRequestModelCopyWith<$Res>
    implements $UpdateOperationRequestModelCopyWith<$Res> {
  factory _$$_UpdateOperationRequestModelCopyWith(
          _$_UpdateOperationRequestModel value,
          $Res Function(_$_UpdateOperationRequestModel) then) =
      __$$_UpdateOperationRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? value});
}

/// @nodoc
class __$$_UpdateOperationRequestModelCopyWithImpl<$Res>
    extends _$UpdateOperationRequestModelCopyWithImpl<$Res,
        _$_UpdateOperationRequestModel>
    implements _$$_UpdateOperationRequestModelCopyWith<$Res> {
  __$$_UpdateOperationRequestModelCopyWithImpl(
      _$_UpdateOperationRequestModel _value,
      $Res Function(_$_UpdateOperationRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_UpdateOperationRequestModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateOperationRequestModel implements _UpdateOperationRequestModel {
  const _$_UpdateOperationRequestModel({this.name, this.value});

  factory _$_UpdateOperationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateOperationRequestModelFromJson(json);

  @override
  final String? name;
  @override
  final int? value;

  @override
  String toString() {
    return 'UpdateOperationRequestModel(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateOperationRequestModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateOperationRequestModelCopyWith<_$_UpdateOperationRequestModel>
      get copyWith => __$$_UpdateOperationRequestModelCopyWithImpl<
          _$_UpdateOperationRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateOperationRequestModelToJson(
      this,
    );
  }
}

abstract class _UpdateOperationRequestModel
    implements UpdateOperationRequestModel {
  const factory _UpdateOperationRequestModel(
      {final String? name, final int? value}) = _$_UpdateOperationRequestModel;

  factory _UpdateOperationRequestModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateOperationRequestModel.fromJson;

  @override
  String? get name;
  @override
  int? get value;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateOperationRequestModelCopyWith<_$_UpdateOperationRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
