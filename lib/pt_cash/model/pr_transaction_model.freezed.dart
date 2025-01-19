// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pr_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PtTransactionModel _$PtTransactionModelFromJson(Map<String, dynamic> json) {
  return _PtTransactionModel.fromJson(json);
}

/// @nodoc
mixin _$PtTransactionModel {
  DateTime? get date => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get cash_on_hand => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get status_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PtTransactionModelCopyWith<PtTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PtTransactionModelCopyWith<$Res> {
  factory $PtTransactionModelCopyWith(
          PtTransactionModel value, $Res Function(PtTransactionModel) then) =
      _$PtTransactionModelCopyWithImpl<$Res, PtTransactionModel>;
  @useResult
  $Res call(
      {DateTime? date,
      String? from,
      String? to,
      String? amount,
      String? note,
      String? cash_on_hand,
      String? status,
      String? status_name});
}

/// @nodoc
class _$PtTransactionModelCopyWithImpl<$Res, $Val extends PtTransactionModel>
    implements $PtTransactionModelCopyWith<$Res> {
  _$PtTransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? amount = freezed,
    Object? note = freezed,
    Object? cash_on_hand = freezed,
    Object? status = freezed,
    Object? status_name = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      cash_on_hand: freezed == cash_on_hand
          ? _value.cash_on_hand
          : cash_on_hand // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      status_name: freezed == status_name
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PtTransactionModelCopyWith<$Res>
    implements $PtTransactionModelCopyWith<$Res> {
  factory _$$_PtTransactionModelCopyWith(_$_PtTransactionModel value,
          $Res Function(_$_PtTransactionModel) then) =
      __$$_PtTransactionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? date,
      String? from,
      String? to,
      String? amount,
      String? note,
      String? cash_on_hand,
      String? status,
      String? status_name});
}

/// @nodoc
class __$$_PtTransactionModelCopyWithImpl<$Res>
    extends _$PtTransactionModelCopyWithImpl<$Res, _$_PtTransactionModel>
    implements _$$_PtTransactionModelCopyWith<$Res> {
  __$$_PtTransactionModelCopyWithImpl(
      _$_PtTransactionModel _value, $Res Function(_$_PtTransactionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? amount = freezed,
    Object? note = freezed,
    Object? cash_on_hand = freezed,
    Object? status = freezed,
    Object? status_name = freezed,
  }) {
    return _then(_$_PtTransactionModel(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      cash_on_hand: freezed == cash_on_hand
          ? _value.cash_on_hand
          : cash_on_hand // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      status_name: freezed == status_name
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PtTransactionModel implements _PtTransactionModel {
  const _$_PtTransactionModel(
      {this.date,
      this.from,
      this.to,
      this.amount,
      this.note,
      this.cash_on_hand,
      this.status,
      this.status_name});

  factory _$_PtTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PtTransactionModelFromJson(json);

  @override
  final DateTime? date;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final String? amount;
  @override
  final String? note;
  @override
  final String? cash_on_hand;
  @override
  final String? status;
  @override
  final String? status_name;

  @override
  String toString() {
    return 'PtTransactionModel(date: $date, from: $from, to: $to, amount: $amount, note: $note, cash_on_hand: $cash_on_hand, status: $status, status_name: $status_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PtTransactionModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.cash_on_hand, cash_on_hand) ||
                other.cash_on_hand == cash_on_hand) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.status_name, status_name) ||
                other.status_name == status_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, from, to, amount, note,
      cash_on_hand, status, status_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PtTransactionModelCopyWith<_$_PtTransactionModel> get copyWith =>
      __$$_PtTransactionModelCopyWithImpl<_$_PtTransactionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PtTransactionModelToJson(
      this,
    );
  }
}

abstract class _PtTransactionModel implements PtTransactionModel {
  const factory _PtTransactionModel(
      {final DateTime? date,
      final String? from,
      final String? to,
      final String? amount,
      final String? note,
      final String? cash_on_hand,
      final String? status,
      final String? status_name}) = _$_PtTransactionModel;

  factory _PtTransactionModel.fromJson(Map<String, dynamic> json) =
      _$_PtTransactionModel.fromJson;

  @override
  DateTime? get date;
  @override
  String? get from;
  @override
  String? get to;
  @override
  String? get amount;
  @override
  String? get note;
  @override
  String? get cash_on_hand;
  @override
  String? get status;
  @override
  String? get status_name;
  @override
  @JsonKey(ignore: true)
  _$$_PtTransactionModelCopyWith<_$_PtTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
