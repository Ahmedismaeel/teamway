// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pt_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PtSummaryModel _$PtSummaryModelFromJson(Map<String, dynamic> json) {
  return _PtSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$PtSummaryModel {
  String? get employee_name => throw _privateConstructorUsedError;
  String? get ptc => throw _privateConstructorUsedError;
  String? get total_received => throw _privateConstructorUsedError;
  String? get total_transfered => throw _privateConstructorUsedError;
  String? get total_expenses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PtSummaryModelCopyWith<PtSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PtSummaryModelCopyWith<$Res> {
  factory $PtSummaryModelCopyWith(
          PtSummaryModel value, $Res Function(PtSummaryModel) then) =
      _$PtSummaryModelCopyWithImpl<$Res, PtSummaryModel>;
  @useResult
  $Res call(
      {String? employee_name,
      String? ptc,
      String? total_received,
      String? total_transfered,
      String? total_expenses});
}

/// @nodoc
class _$PtSummaryModelCopyWithImpl<$Res, $Val extends PtSummaryModel>
    implements $PtSummaryModelCopyWith<$Res> {
  _$PtSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee_name = freezed,
    Object? ptc = freezed,
    Object? total_received = freezed,
    Object? total_transfered = freezed,
    Object? total_expenses = freezed,
  }) {
    return _then(_value.copyWith(
      employee_name: freezed == employee_name
          ? _value.employee_name
          : employee_name // ignore: cast_nullable_to_non_nullable
              as String?,
      ptc: freezed == ptc
          ? _value.ptc
          : ptc // ignore: cast_nullable_to_non_nullable
              as String?,
      total_received: freezed == total_received
          ? _value.total_received
          : total_received // ignore: cast_nullable_to_non_nullable
              as String?,
      total_transfered: freezed == total_transfered
          ? _value.total_transfered
          : total_transfered // ignore: cast_nullable_to_non_nullable
              as String?,
      total_expenses: freezed == total_expenses
          ? _value.total_expenses
          : total_expenses // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PtSummaryModelCopyWith<$Res>
    implements $PtSummaryModelCopyWith<$Res> {
  factory _$$_PtSummaryModelCopyWith(
          _$_PtSummaryModel value, $Res Function(_$_PtSummaryModel) then) =
      __$$_PtSummaryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? employee_name,
      String? ptc,
      String? total_received,
      String? total_transfered,
      String? total_expenses});
}

/// @nodoc
class __$$_PtSummaryModelCopyWithImpl<$Res>
    extends _$PtSummaryModelCopyWithImpl<$Res, _$_PtSummaryModel>
    implements _$$_PtSummaryModelCopyWith<$Res> {
  __$$_PtSummaryModelCopyWithImpl(
      _$_PtSummaryModel _value, $Res Function(_$_PtSummaryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee_name = freezed,
    Object? ptc = freezed,
    Object? total_received = freezed,
    Object? total_transfered = freezed,
    Object? total_expenses = freezed,
  }) {
    return _then(_$_PtSummaryModel(
      employee_name: freezed == employee_name
          ? _value.employee_name
          : employee_name // ignore: cast_nullable_to_non_nullable
              as String?,
      ptc: freezed == ptc
          ? _value.ptc
          : ptc // ignore: cast_nullable_to_non_nullable
              as String?,
      total_received: freezed == total_received
          ? _value.total_received
          : total_received // ignore: cast_nullable_to_non_nullable
              as String?,
      total_transfered: freezed == total_transfered
          ? _value.total_transfered
          : total_transfered // ignore: cast_nullable_to_non_nullable
              as String?,
      total_expenses: freezed == total_expenses
          ? _value.total_expenses
          : total_expenses // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PtSummaryModel implements _PtSummaryModel {
  const _$_PtSummaryModel(
      {this.employee_name,
      this.ptc,
      this.total_received,
      this.total_transfered,
      this.total_expenses});

  factory _$_PtSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_PtSummaryModelFromJson(json);

  @override
  final String? employee_name;
  @override
  final String? ptc;
  @override
  final String? total_received;
  @override
  final String? total_transfered;
  @override
  final String? total_expenses;

  @override
  String toString() {
    return 'PtSummaryModel(employee_name: $employee_name, ptc: $ptc, total_received: $total_received, total_transfered: $total_transfered, total_expenses: $total_expenses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PtSummaryModel &&
            (identical(other.employee_name, employee_name) ||
                other.employee_name == employee_name) &&
            (identical(other.ptc, ptc) || other.ptc == ptc) &&
            (identical(other.total_received, total_received) ||
                other.total_received == total_received) &&
            (identical(other.total_transfered, total_transfered) ||
                other.total_transfered == total_transfered) &&
            (identical(other.total_expenses, total_expenses) ||
                other.total_expenses == total_expenses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, employee_name, ptc,
      total_received, total_transfered, total_expenses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PtSummaryModelCopyWith<_$_PtSummaryModel> get copyWith =>
      __$$_PtSummaryModelCopyWithImpl<_$_PtSummaryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PtSummaryModelToJson(
      this,
    );
  }
}

abstract class _PtSummaryModel implements PtSummaryModel {
  const factory _PtSummaryModel(
      {final String? employee_name,
      final String? ptc,
      final String? total_received,
      final String? total_transfered,
      final String? total_expenses}) = _$_PtSummaryModel;

  factory _PtSummaryModel.fromJson(Map<String, dynamic> json) =
      _$_PtSummaryModel.fromJson;

  @override
  String? get employee_name;
  @override
  String? get ptc;
  @override
  String? get total_received;
  @override
  String? get total_transfered;
  @override
  String? get total_expenses;
  @override
  @JsonKey(ignore: true)
  _$$_PtSummaryModelCopyWith<_$_PtSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
