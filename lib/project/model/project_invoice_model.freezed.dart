// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectInvoiceModel _$ProjectInvoiceModelFromJson(Map<String, dynamic> json) {
  return _ProjectInvoiceModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectInvoiceModel {
  int? get id => throw _privateConstructorUsedError;
  int? get project_id => throw _privateConstructorUsedError;
  String? get client_name => throw _privateConstructorUsedError;
  int? get client_id => throw _privateConstructorUsedError;
  String? get client_phone => throw _privateConstructorUsedError;
  DateTime? get bill_date => throw _privateConstructorUsedError;
  DateTime? get due_date => throw _privateConstructorUsedError;
  String? get total_value => throw _privateConstructorUsedError;
  String? get payment_received => throw _privateConstructorUsedError;
  String? get tax_after_discount => throw _privateConstructorUsedError;
  String? get delivery_status => throw _privateConstructorUsedError;
  String? get approval_status => throw _privateConstructorUsedError;
  String? get invoice_status => throw _privateConstructorUsedError;
  String? get labels => throw _privateConstructorUsedError;
  String? get const_center_name => throw _privateConstructorUsedError;
  int? get const_center_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectInvoiceModelCopyWith<ProjectInvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectInvoiceModelCopyWith<$Res> {
  factory $ProjectInvoiceModelCopyWith(
          ProjectInvoiceModel value, $Res Function(ProjectInvoiceModel) then) =
      _$ProjectInvoiceModelCopyWithImpl<$Res, ProjectInvoiceModel>;
  @useResult
  $Res call(
      {int? id,
      int? project_id,
      String? client_name,
      int? client_id,
      String? client_phone,
      DateTime? bill_date,
      DateTime? due_date,
      String? total_value,
      String? payment_received,
      String? tax_after_discount,
      String? delivery_status,
      String? approval_status,
      String? invoice_status,
      String? labels,
      String? const_center_name,
      int? const_center_id});
}

/// @nodoc
class _$ProjectInvoiceModelCopyWithImpl<$Res, $Val extends ProjectInvoiceModel>
    implements $ProjectInvoiceModelCopyWith<$Res> {
  _$ProjectInvoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? project_id = freezed,
    Object? client_name = freezed,
    Object? client_id = freezed,
    Object? client_phone = freezed,
    Object? bill_date = freezed,
    Object? due_date = freezed,
    Object? total_value = freezed,
    Object? payment_received = freezed,
    Object? tax_after_discount = freezed,
    Object? delivery_status = freezed,
    Object? approval_status = freezed,
    Object? invoice_status = freezed,
    Object? labels = freezed,
    Object? const_center_name = freezed,
    Object? const_center_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      project_id: freezed == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_name: freezed == client_name
          ? _value.client_name
          : client_name // ignore: cast_nullable_to_non_nullable
              as String?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_phone: freezed == client_phone
          ? _value.client_phone
          : client_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      bill_date: freezed == bill_date
          ? _value.bill_date
          : bill_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      due_date: freezed == due_date
          ? _value.due_date
          : due_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      total_value: freezed == total_value
          ? _value.total_value
          : total_value // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_received: freezed == payment_received
          ? _value.payment_received
          : payment_received // ignore: cast_nullable_to_non_nullable
              as String?,
      tax_after_discount: freezed == tax_after_discount
          ? _value.tax_after_discount
          : tax_after_discount // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_status: freezed == delivery_status
          ? _value.delivery_status
          : delivery_status // ignore: cast_nullable_to_non_nullable
              as String?,
      approval_status: freezed == approval_status
          ? _value.approval_status
          : approval_status // ignore: cast_nullable_to_non_nullable
              as String?,
      invoice_status: freezed == invoice_status
          ? _value.invoice_status
          : invoice_status // ignore: cast_nullable_to_non_nullable
              as String?,
      labels: freezed == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as String?,
      const_center_name: freezed == const_center_name
          ? _value.const_center_name
          : const_center_name // ignore: cast_nullable_to_non_nullable
              as String?,
      const_center_id: freezed == const_center_id
          ? _value.const_center_id
          : const_center_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectInvoiceModelCopyWith<$Res>
    implements $ProjectInvoiceModelCopyWith<$Res> {
  factory _$$_ProjectInvoiceModelCopyWith(_$_ProjectInvoiceModel value,
          $Res Function(_$_ProjectInvoiceModel) then) =
      __$$_ProjectInvoiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? project_id,
      String? client_name,
      int? client_id,
      String? client_phone,
      DateTime? bill_date,
      DateTime? due_date,
      String? total_value,
      String? payment_received,
      String? tax_after_discount,
      String? delivery_status,
      String? approval_status,
      String? invoice_status,
      String? labels,
      String? const_center_name,
      int? const_center_id});
}

/// @nodoc
class __$$_ProjectInvoiceModelCopyWithImpl<$Res>
    extends _$ProjectInvoiceModelCopyWithImpl<$Res, _$_ProjectInvoiceModel>
    implements _$$_ProjectInvoiceModelCopyWith<$Res> {
  __$$_ProjectInvoiceModelCopyWithImpl(_$_ProjectInvoiceModel _value,
      $Res Function(_$_ProjectInvoiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? project_id = freezed,
    Object? client_name = freezed,
    Object? client_id = freezed,
    Object? client_phone = freezed,
    Object? bill_date = freezed,
    Object? due_date = freezed,
    Object? total_value = freezed,
    Object? payment_received = freezed,
    Object? tax_after_discount = freezed,
    Object? delivery_status = freezed,
    Object? approval_status = freezed,
    Object? invoice_status = freezed,
    Object? labels = freezed,
    Object? const_center_name = freezed,
    Object? const_center_id = freezed,
  }) {
    return _then(_$_ProjectInvoiceModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      project_id: freezed == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_name: freezed == client_name
          ? _value.client_name
          : client_name // ignore: cast_nullable_to_non_nullable
              as String?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_phone: freezed == client_phone
          ? _value.client_phone
          : client_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      bill_date: freezed == bill_date
          ? _value.bill_date
          : bill_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      due_date: freezed == due_date
          ? _value.due_date
          : due_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      total_value: freezed == total_value
          ? _value.total_value
          : total_value // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_received: freezed == payment_received
          ? _value.payment_received
          : payment_received // ignore: cast_nullable_to_non_nullable
              as String?,
      tax_after_discount: freezed == tax_after_discount
          ? _value.tax_after_discount
          : tax_after_discount // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_status: freezed == delivery_status
          ? _value.delivery_status
          : delivery_status // ignore: cast_nullable_to_non_nullable
              as String?,
      approval_status: freezed == approval_status
          ? _value.approval_status
          : approval_status // ignore: cast_nullable_to_non_nullable
              as String?,
      invoice_status: freezed == invoice_status
          ? _value.invoice_status
          : invoice_status // ignore: cast_nullable_to_non_nullable
              as String?,
      labels: freezed == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as String?,
      const_center_name: freezed == const_center_name
          ? _value.const_center_name
          : const_center_name // ignore: cast_nullable_to_non_nullable
              as String?,
      const_center_id: freezed == const_center_id
          ? _value.const_center_id
          : const_center_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectInvoiceModel implements _ProjectInvoiceModel {
  const _$_ProjectInvoiceModel(
      {this.id,
      this.project_id,
      this.client_name,
      this.client_id,
      this.client_phone,
      this.bill_date,
      this.due_date,
      this.total_value,
      this.payment_received,
      this.tax_after_discount,
      this.delivery_status,
      this.approval_status,
      this.invoice_status,
      this.labels,
      this.const_center_name,
      this.const_center_id});

  factory _$_ProjectInvoiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectInvoiceModelFromJson(json);

  @override
  final int? id;
  @override
  final int? project_id;
  @override
  final String? client_name;
  @override
  final int? client_id;
  @override
  final String? client_phone;
  @override
  final DateTime? bill_date;
  @override
  final DateTime? due_date;
  @override
  final String? total_value;
  @override
  final String? payment_received;
  @override
  final String? tax_after_discount;
  @override
  final String? delivery_status;
  @override
  final String? approval_status;
  @override
  final String? invoice_status;
  @override
  final String? labels;
  @override
  final String? const_center_name;
  @override
  final int? const_center_id;

  @override
  String toString() {
    return 'ProjectInvoiceModel(id: $id, project_id: $project_id, client_name: $client_name, client_id: $client_id, client_phone: $client_phone, bill_date: $bill_date, due_date: $due_date, total_value: $total_value, payment_received: $payment_received, tax_after_discount: $tax_after_discount, delivery_status: $delivery_status, approval_status: $approval_status, invoice_status: $invoice_status, labels: $labels, const_center_name: $const_center_name, const_center_id: $const_center_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectInvoiceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.project_id, project_id) ||
                other.project_id == project_id) &&
            (identical(other.client_name, client_name) ||
                other.client_name == client_name) &&
            (identical(other.client_id, client_id) ||
                other.client_id == client_id) &&
            (identical(other.client_phone, client_phone) ||
                other.client_phone == client_phone) &&
            (identical(other.bill_date, bill_date) ||
                other.bill_date == bill_date) &&
            (identical(other.due_date, due_date) ||
                other.due_date == due_date) &&
            (identical(other.total_value, total_value) ||
                other.total_value == total_value) &&
            (identical(other.payment_received, payment_received) ||
                other.payment_received == payment_received) &&
            (identical(other.tax_after_discount, tax_after_discount) ||
                other.tax_after_discount == tax_after_discount) &&
            (identical(other.delivery_status, delivery_status) ||
                other.delivery_status == delivery_status) &&
            (identical(other.approval_status, approval_status) ||
                other.approval_status == approval_status) &&
            (identical(other.invoice_status, invoice_status) ||
                other.invoice_status == invoice_status) &&
            (identical(other.labels, labels) || other.labels == labels) &&
            (identical(other.const_center_name, const_center_name) ||
                other.const_center_name == const_center_name) &&
            (identical(other.const_center_id, const_center_id) ||
                other.const_center_id == const_center_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      project_id,
      client_name,
      client_id,
      client_phone,
      bill_date,
      due_date,
      total_value,
      payment_received,
      tax_after_discount,
      delivery_status,
      approval_status,
      invoice_status,
      labels,
      const_center_name,
      const_center_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectInvoiceModelCopyWith<_$_ProjectInvoiceModel> get copyWith =>
      __$$_ProjectInvoiceModelCopyWithImpl<_$_ProjectInvoiceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectInvoiceModelToJson(
      this,
    );
  }
}

abstract class _ProjectInvoiceModel implements ProjectInvoiceModel {
  const factory _ProjectInvoiceModel(
      {final int? id,
      final int? project_id,
      final String? client_name,
      final int? client_id,
      final String? client_phone,
      final DateTime? bill_date,
      final DateTime? due_date,
      final String? total_value,
      final String? payment_received,
      final String? tax_after_discount,
      final String? delivery_status,
      final String? approval_status,
      final String? invoice_status,
      final String? labels,
      final String? const_center_name,
      final int? const_center_id}) = _$_ProjectInvoiceModel;

  factory _ProjectInvoiceModel.fromJson(Map<String, dynamic> json) =
      _$_ProjectInvoiceModel.fromJson;

  @override
  int? get id;
  @override
  int? get project_id;
  @override
  String? get client_name;
  @override
  int? get client_id;
  @override
  String? get client_phone;
  @override
  DateTime? get bill_date;
  @override
  DateTime? get due_date;
  @override
  String? get total_value;
  @override
  String? get payment_received;
  @override
  String? get tax_after_discount;
  @override
  String? get delivery_status;
  @override
  String? get approval_status;
  @override
  String? get invoice_status;
  @override
  String? get labels;
  @override
  String? get const_center_name;
  @override
  int? get const_center_id;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectInvoiceModelCopyWith<_$_ProjectInvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
