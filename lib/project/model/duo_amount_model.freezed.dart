// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duo_amount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DuoAmountModel _$DuoAmountModelFromJson(Map<String, dynamic> json) {
  return _DuoAmountModel.fromJson(json);
}

/// @nodoc
mixin _$DuoAmountModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get due => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DuoAmountModelCopyWith<DuoAmountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuoAmountModelCopyWith<$Res> {
  factory $DuoAmountModelCopyWith(
          DuoAmountModel value, $Res Function(DuoAmountModel) then) =
      _$DuoAmountModelCopyWithImpl<$Res, DuoAmountModel>;
  @useResult
  $Res call({bool? success, String? due, String? message});
}

/// @nodoc
class _$DuoAmountModelCopyWithImpl<$Res, $Val extends DuoAmountModel>
    implements $DuoAmountModelCopyWith<$Res> {
  _$DuoAmountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? due = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DuoAmountModelCopyWith<$Res>
    implements $DuoAmountModelCopyWith<$Res> {
  factory _$$_DuoAmountModelCopyWith(
          _$_DuoAmountModel value, $Res Function(_$_DuoAmountModel) then) =
      __$$_DuoAmountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? due, String? message});
}

/// @nodoc
class __$$_DuoAmountModelCopyWithImpl<$Res>
    extends _$DuoAmountModelCopyWithImpl<$Res, _$_DuoAmountModel>
    implements _$$_DuoAmountModelCopyWith<$Res> {
  __$$_DuoAmountModelCopyWithImpl(
      _$_DuoAmountModel _value, $Res Function(_$_DuoAmountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? due = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_DuoAmountModel(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DuoAmountModel implements _DuoAmountModel {
  const _$_DuoAmountModel({this.success, this.due, this.message});

  factory _$_DuoAmountModel.fromJson(Map<String, dynamic> json) =>
      _$$_DuoAmountModelFromJson(json);

  @override
  final bool? success;
  @override
  final String? due;
  @override
  final String? message;

  @override
  String toString() {
    return 'DuoAmountModel(success: $success, due: $due, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DuoAmountModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.due, due) || other.due == due) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, due, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DuoAmountModelCopyWith<_$_DuoAmountModel> get copyWith =>
      __$$_DuoAmountModelCopyWithImpl<_$_DuoAmountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DuoAmountModelToJson(
      this,
    );
  }
}

abstract class _DuoAmountModel implements DuoAmountModel {
  const factory _DuoAmountModel(
      {final bool? success,
      final String? due,
      final String? message}) = _$_DuoAmountModel;

  factory _DuoAmountModel.fromJson(Map<String, dynamic> json) =
      _$_DuoAmountModel.fromJson;

  @override
  bool? get success;
  @override
  String? get due;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_DuoAmountModelCopyWith<_$_DuoAmountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
