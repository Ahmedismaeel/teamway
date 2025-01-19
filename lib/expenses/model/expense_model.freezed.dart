// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExpenseModel _$ExpenseModelFromJson(Map<String, dynamic> json) {
  return _ExpenseModel.fromJson(json);
}

/// @nodoc
mixin _$ExpenseModel {
  List<Data>? get data => throw _privateConstructorUsedError;
  Permissions? get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseModelCopyWith<ExpenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseModelCopyWith<$Res> {
  factory $ExpenseModelCopyWith(
          ExpenseModel value, $Res Function(ExpenseModel) then) =
      _$ExpenseModelCopyWithImpl<$Res, ExpenseModel>;
  @useResult
  $Res call({List<Data>? data, Permissions? permissions});

  $PermissionsCopyWith<$Res>? get permissions;
}

/// @nodoc
class _$ExpenseModelCopyWithImpl<$Res, $Val extends ExpenseModel>
    implements $ExpenseModelCopyWith<$Res> {
  _$ExpenseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? permissions = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Permissions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PermissionsCopyWith<$Res>? get permissions {
    if (_value.permissions == null) {
      return null;
    }

    return $PermissionsCopyWith<$Res>(_value.permissions!, (value) {
      return _then(_value.copyWith(permissions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExpenseModelCopyWith<$Res>
    implements $ExpenseModelCopyWith<$Res> {
  factory _$$_ExpenseModelCopyWith(
          _$_ExpenseModel value, $Res Function(_$_ExpenseModel) then) =
      __$$_ExpenseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Data>? data, Permissions? permissions});

  @override
  $PermissionsCopyWith<$Res>? get permissions;
}

/// @nodoc
class __$$_ExpenseModelCopyWithImpl<$Res>
    extends _$ExpenseModelCopyWithImpl<$Res, _$_ExpenseModel>
    implements _$$_ExpenseModelCopyWith<$Res> {
  __$$_ExpenseModelCopyWithImpl(
      _$_ExpenseModel _value, $Res Function(_$_ExpenseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? permissions = freezed,
  }) {
    return _then(_$_ExpenseModel(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Permissions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpenseModel implements _ExpenseModel {
  const _$_ExpenseModel({final List<Data>? data, this.permissions})
      : _data = data;

  factory _$_ExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExpenseModelFromJson(json);

  final List<Data>? _data;
  @override
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Permissions? permissions;

  @override
  String toString() {
    return 'ExpenseModel(data: $data, permissions: $permissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpenseModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.permissions, permissions) ||
                other.permissions == permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), permissions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpenseModelCopyWith<_$_ExpenseModel> get copyWith =>
      __$$_ExpenseModelCopyWithImpl<_$_ExpenseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpenseModelToJson(
      this,
    );
  }
}

abstract class _ExpenseModel implements ExpenseModel {
  const factory _ExpenseModel(
      {final List<Data>? data,
      final Permissions? permissions}) = _$_ExpenseModel;

  factory _ExpenseModel.fromJson(Map<String, dynamic> json) =
      _$_ExpenseModel.fromJson;

  @override
  List<Data>? get data;
  @override
  Permissions? get permissions;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseModelCopyWith<_$_ExpenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get id => throw _privateConstructorUsedError;
  String? get expense_date => throw _privateConstructorUsedError;
  String? get category_id => throw _privateConstructorUsedError;
  String? get item_id => throw _privateConstructorUsedError;
  String? get category_name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get project_id => throw _privateConstructorUsedError;
  String? get project_title => throw _privateConstructorUsedError;
  String? get user_id => throw _privateConstructorUsedError;
  String? get linked_user_name => throw _privateConstructorUsedError;
  String? get company_name => throw _privateConstructorUsedError;
  List<Attachments>? get attachments => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get tax => throw _privateConstructorUsedError;
  String? get payment_mode => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get cost_center_id => throw _privateConstructorUsedError;
  String? get cost_center_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String? id,
      String? expense_date,
      String? category_id,
      String? item_id,
      String? category_name,
      String? title,
      String? description,
      String? project_id,
      String? project_title,
      String? user_id,
      String? linked_user_name,
      String? company_name,
      List<Attachments>? attachments,
      String? amount,
      String? tax,
      String? payment_mode,
      String? status,
      String? cost_center_id,
      String? cost_center_name});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? expense_date = freezed,
    Object? category_id = freezed,
    Object? item_id = freezed,
    Object? category_name = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? project_id = freezed,
    Object? project_title = freezed,
    Object? user_id = freezed,
    Object? linked_user_name = freezed,
    Object? company_name = freezed,
    Object? attachments = freezed,
    Object? amount = freezed,
    Object? tax = freezed,
    Object? payment_mode = freezed,
    Object? status = freezed,
    Object? cost_center_id = freezed,
    Object? cost_center_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      expense_date: freezed == expense_date
          ? _value.expense_date
          : expense_date // ignore: cast_nullable_to_non_nullable
              as String?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String?,
      item_id: freezed == item_id
          ? _value.item_id
          : item_id // ignore: cast_nullable_to_non_nullable
              as String?,
      category_name: freezed == category_name
          ? _value.category_name
          : category_name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      project_id: freezed == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as String?,
      project_title: freezed == project_title
          ? _value.project_title
          : project_title // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      linked_user_name: freezed == linked_user_name
          ? _value.linked_user_name
          : linked_user_name // ignore: cast_nullable_to_non_nullable
              as String?,
      company_name: freezed == company_name
          ? _value.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachments>?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_mode: freezed == payment_mode
          ? _value.payment_mode
          : payment_mode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      cost_center_id: freezed == cost_center_id
          ? _value.cost_center_id
          : cost_center_id // ignore: cast_nullable_to_non_nullable
              as String?,
      cost_center_name: freezed == cost_center_name
          ? _value.cost_center_name
          : cost_center_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? expense_date,
      String? category_id,
      String? item_id,
      String? category_name,
      String? title,
      String? description,
      String? project_id,
      String? project_title,
      String? user_id,
      String? linked_user_name,
      String? company_name,
      List<Attachments>? attachments,
      String? amount,
      String? tax,
      String? payment_mode,
      String? status,
      String? cost_center_id,
      String? cost_center_name});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? expense_date = freezed,
    Object? category_id = freezed,
    Object? item_id = freezed,
    Object? category_name = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? project_id = freezed,
    Object? project_title = freezed,
    Object? user_id = freezed,
    Object? linked_user_name = freezed,
    Object? company_name = freezed,
    Object? attachments = freezed,
    Object? amount = freezed,
    Object? tax = freezed,
    Object? payment_mode = freezed,
    Object? status = freezed,
    Object? cost_center_id = freezed,
    Object? cost_center_name = freezed,
  }) {
    return _then(_$_Data(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      expense_date: freezed == expense_date
          ? _value.expense_date
          : expense_date // ignore: cast_nullable_to_non_nullable
              as String?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String?,
      item_id: freezed == item_id
          ? _value.item_id
          : item_id // ignore: cast_nullable_to_non_nullable
              as String?,
      category_name: freezed == category_name
          ? _value.category_name
          : category_name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      project_id: freezed == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as String?,
      project_title: freezed == project_title
          ? _value.project_title
          : project_title // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      linked_user_name: freezed == linked_user_name
          ? _value.linked_user_name
          : linked_user_name // ignore: cast_nullable_to_non_nullable
              as String?,
      company_name: freezed == company_name
          ? _value.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachments>?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_mode: freezed == payment_mode
          ? _value.payment_mode
          : payment_mode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      cost_center_id: freezed == cost_center_id
          ? _value.cost_center_id
          : cost_center_id // ignore: cast_nullable_to_non_nullable
              as String?,
      cost_center_name: freezed == cost_center_name
          ? _value.cost_center_name
          : cost_center_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.id,
      this.expense_date,
      this.category_id,
      this.item_id,
      this.category_name,
      this.title,
      this.description,
      this.project_id,
      this.project_title,
      this.user_id,
      this.linked_user_name,
      this.company_name,
      final List<Attachments>? attachments,
      this.amount,
      this.tax,
      this.payment_mode,
      this.status,
      this.cost_center_id,
      this.cost_center_name})
      : _attachments = attachments;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? id;
  @override
  final String? expense_date;
  @override
  final String? category_id;
  @override
  final String? item_id;
  @override
  final String? category_name;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? project_id;
  @override
  final String? project_title;
  @override
  final String? user_id;
  @override
  final String? linked_user_name;
  @override
  final String? company_name;
  final List<Attachments>? _attachments;
  @override
  List<Attachments>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? amount;
  @override
  final String? tax;
  @override
  final String? payment_mode;
  @override
  final String? status;
  @override
  final String? cost_center_id;
  @override
  final String? cost_center_name;

  @override
  String toString() {
    return 'Data(id: $id, expense_date: $expense_date, category_id: $category_id, item_id: $item_id, category_name: $category_name, title: $title, description: $description, project_id: $project_id, project_title: $project_title, user_id: $user_id, linked_user_name: $linked_user_name, company_name: $company_name, attachments: $attachments, amount: $amount, tax: $tax, payment_mode: $payment_mode, status: $status, cost_center_id: $cost_center_id, cost_center_name: $cost_center_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.expense_date, expense_date) ||
                other.expense_date == expense_date) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.item_id, item_id) || other.item_id == item_id) &&
            (identical(other.category_name, category_name) ||
                other.category_name == category_name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.project_id, project_id) ||
                other.project_id == project_id) &&
            (identical(other.project_title, project_title) ||
                other.project_title == project_title) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.linked_user_name, linked_user_name) ||
                other.linked_user_name == linked_user_name) &&
            (identical(other.company_name, company_name) ||
                other.company_name == company_name) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.payment_mode, payment_mode) ||
                other.payment_mode == payment_mode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cost_center_id, cost_center_id) ||
                other.cost_center_id == cost_center_id) &&
            (identical(other.cost_center_name, cost_center_name) ||
                other.cost_center_name == cost_center_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        expense_date,
        category_id,
        item_id,
        category_name,
        title,
        description,
        project_id,
        project_title,
        user_id,
        linked_user_name,
        company_name,
        const DeepCollectionEquality().hash(_attachments),
        amount,
        tax,
        payment_mode,
        status,
        cost_center_id,
        cost_center_name
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final String? id,
      final String? expense_date,
      final String? category_id,
      final String? item_id,
      final String? category_name,
      final String? title,
      final String? description,
      final String? project_id,
      final String? project_title,
      final String? user_id,
      final String? linked_user_name,
      final String? company_name,
      final List<Attachments>? attachments,
      final String? amount,
      final String? tax,
      final String? payment_mode,
      final String? status,
      final String? cost_center_id,
      final String? cost_center_name}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get id;
  @override
  String? get expense_date;
  @override
  String? get category_id;
  @override
  String? get item_id;
  @override
  String? get category_name;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get project_id;
  @override
  String? get project_title;
  @override
  String? get user_id;
  @override
  String? get linked_user_name;
  @override
  String? get company_name;
  @override
  List<Attachments>? get attachments;
  @override
  String? get amount;
  @override
  String? get tax;
  @override
  String? get payment_mode;
  @override
  String? get status;
  @override
  String? get cost_center_id;
  @override
  String? get cost_center_name;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Attachments _$AttachmentsFromJson(Map<String, dynamic> json) {
  return _Attachments.fromJson(json);
}

/// @nodoc
mixin _$Attachments {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentsCopyWith<Attachments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentsCopyWith<$Res> {
  factory $AttachmentsCopyWith(
          Attachments value, $Res Function(Attachments) then) =
      _$AttachmentsCopyWithImpl<$Res, Attachments>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$AttachmentsCopyWithImpl<$Res, $Val extends Attachments>
    implements $AttachmentsCopyWith<$Res> {
  _$AttachmentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttachmentsCopyWith<$Res>
    implements $AttachmentsCopyWith<$Res> {
  factory _$$_AttachmentsCopyWith(
          _$_Attachments value, $Res Function(_$_Attachments) then) =
      __$$_AttachmentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_AttachmentsCopyWithImpl<$Res>
    extends _$AttachmentsCopyWithImpl<$Res, _$_Attachments>
    implements _$$_AttachmentsCopyWith<$Res> {
  __$$_AttachmentsCopyWithImpl(
      _$_Attachments _value, $Res Function(_$_Attachments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Attachments(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attachments implements _Attachments {
  const _$_Attachments({this.name, this.url});

  factory _$_Attachments.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentsFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'Attachments(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Attachments &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttachmentsCopyWith<_$_Attachments> get copyWith =>
      __$$_AttachmentsCopyWithImpl<_$_Attachments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentsToJson(
      this,
    );
  }
}

abstract class _Attachments implements Attachments {
  const factory _Attachments({final String? name, final String? url}) =
      _$_Attachments;

  factory _Attachments.fromJson(Map<String, dynamic> json) =
      _$_Attachments.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentsCopyWith<_$_Attachments> get copyWith =>
      throw _privateConstructorUsedError;
}

Permissions _$PermissionsFromJson(Map<String, dynamic> json) {
  return _Permissions.fromJson(json);
}

/// @nodoc
mixin _$Permissions {
  bool? get approve => throw _privateConstructorUsedError;
  bool? get edit => throw _privateConstructorUsedError;
  bool? get delete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionsCopyWith<Permissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsCopyWith<$Res> {
  factory $PermissionsCopyWith(
          Permissions value, $Res Function(Permissions) then) =
      _$PermissionsCopyWithImpl<$Res, Permissions>;
  @useResult
  $Res call({bool? approve, bool? edit, bool? delete});
}

/// @nodoc
class _$PermissionsCopyWithImpl<$Res, $Val extends Permissions>
    implements $PermissionsCopyWith<$Res> {
  _$PermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = freezed,
    Object? edit = freezed,
    Object? delete = freezed,
  }) {
    return _then(_value.copyWith(
      approve: freezed == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as bool?,
      edit: freezed == edit
          ? _value.edit
          : edit // ignore: cast_nullable_to_non_nullable
              as bool?,
      delete: freezed == delete
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PermissionsCopyWith<$Res>
    implements $PermissionsCopyWith<$Res> {
  factory _$$_PermissionsCopyWith(
          _$_Permissions value, $Res Function(_$_Permissions) then) =
      __$$_PermissionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? approve, bool? edit, bool? delete});
}

/// @nodoc
class __$$_PermissionsCopyWithImpl<$Res>
    extends _$PermissionsCopyWithImpl<$Res, _$_Permissions>
    implements _$$_PermissionsCopyWith<$Res> {
  __$$_PermissionsCopyWithImpl(
      _$_Permissions _value, $Res Function(_$_Permissions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = freezed,
    Object? edit = freezed,
    Object? delete = freezed,
  }) {
    return _then(_$_Permissions(
      approve: freezed == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as bool?,
      edit: freezed == edit
          ? _value.edit
          : edit // ignore: cast_nullable_to_non_nullable
              as bool?,
      delete: freezed == delete
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Permissions implements _Permissions {
  const _$_Permissions({this.approve, this.edit, this.delete});

  factory _$_Permissions.fromJson(Map<String, dynamic> json) =>
      _$$_PermissionsFromJson(json);

  @override
  final bool? approve;
  @override
  final bool? edit;
  @override
  final bool? delete;

  @override
  String toString() {
    return 'Permissions(approve: $approve, edit: $edit, delete: $delete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Permissions &&
            (identical(other.approve, approve) || other.approve == approve) &&
            (identical(other.edit, edit) || other.edit == edit) &&
            (identical(other.delete, delete) || other.delete == delete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, approve, edit, delete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermissionsCopyWith<_$_Permissions> get copyWith =>
      __$$_PermissionsCopyWithImpl<_$_Permissions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PermissionsToJson(
      this,
    );
  }
}

abstract class _Permissions implements Permissions {
  const factory _Permissions(
      {final bool? approve,
      final bool? edit,
      final bool? delete}) = _$_Permissions;

  factory _Permissions.fromJson(Map<String, dynamic> json) =
      _$_Permissions.fromJson;

  @override
  bool? get approve;
  @override
  bool? get edit;
  @override
  bool? get delete;
  @override
  @JsonKey(ignore: true)
  _$$_PermissionsCopyWith<_$_Permissions> get copyWith =>
      throw _privateConstructorUsedError;
}
