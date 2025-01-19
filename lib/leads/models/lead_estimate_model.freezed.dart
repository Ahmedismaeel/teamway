// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_estimate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeadEstimateModel _$LeadEstimateModelFromJson(Map<String, dynamic> json) {
  return _LeadEstimateModel.fromJson(json);
}

/// @nodoc
mixin _$LeadEstimateModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Client? get client => throw _privateConstructorUsedError;
  DateTime? get estimate_date => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get tax => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  Owner? get owner => throw _privateConstructorUsedError;
  CostCenter? get cost_center => throw _privateConstructorUsedError;
  Permission? get permission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadEstimateModelCopyWith<LeadEstimateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadEstimateModelCopyWith<$Res> {
  factory $LeadEstimateModelCopyWith(
          LeadEstimateModel value, $Res Function(LeadEstimateModel) then) =
      _$LeadEstimateModelCopyWithImpl<$Res, LeadEstimateModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      Client? client,
      DateTime? estimate_date,
      String? amount,
      String? tax,
      String? status,
      Owner? owner,
      CostCenter? cost_center,
      Permission? permission});

  $ClientCopyWith<$Res>? get client;
  $OwnerCopyWith<$Res>? get owner;
  $CostCenterCopyWith<$Res>? get cost_center;
  $PermissionCopyWith<$Res>? get permission;
}

/// @nodoc
class _$LeadEstimateModelCopyWithImpl<$Res, $Val extends LeadEstimateModel>
    implements $LeadEstimateModelCopyWith<$Res> {
  _$LeadEstimateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? client = freezed,
    Object? estimate_date = freezed,
    Object? amount = freezed,
    Object? tax = freezed,
    Object? status = freezed,
    Object? owner = freezed,
    Object? cost_center = freezed,
    Object? permission = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      estimate_date: freezed == estimate_date
          ? _value.estimate_date
          : estimate_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      cost_center: freezed == cost_center
          ? _value.cost_center
          : cost_center // ignore: cast_nullable_to_non_nullable
              as CostCenter?,
      permission: freezed == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as Permission?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $ClientCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CostCenterCopyWith<$Res>? get cost_center {
    if (_value.cost_center == null) {
      return null;
    }

    return $CostCenterCopyWith<$Res>(_value.cost_center!, (value) {
      return _then(_value.copyWith(cost_center: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PermissionCopyWith<$Res>? get permission {
    if (_value.permission == null) {
      return null;
    }

    return $PermissionCopyWith<$Res>(_value.permission!, (value) {
      return _then(_value.copyWith(permission: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LeadEstimateModelCopyWith<$Res>
    implements $LeadEstimateModelCopyWith<$Res> {
  factory _$$_LeadEstimateModelCopyWith(_$_LeadEstimateModel value,
          $Res Function(_$_LeadEstimateModel) then) =
      __$$_LeadEstimateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      Client? client,
      DateTime? estimate_date,
      String? amount,
      String? tax,
      String? status,
      Owner? owner,
      CostCenter? cost_center,
      Permission? permission});

  @override
  $ClientCopyWith<$Res>? get client;
  @override
  $OwnerCopyWith<$Res>? get owner;
  @override
  $CostCenterCopyWith<$Res>? get cost_center;
  @override
  $PermissionCopyWith<$Res>? get permission;
}

/// @nodoc
class __$$_LeadEstimateModelCopyWithImpl<$Res>
    extends _$LeadEstimateModelCopyWithImpl<$Res, _$_LeadEstimateModel>
    implements _$$_LeadEstimateModelCopyWith<$Res> {
  __$$_LeadEstimateModelCopyWithImpl(
      _$_LeadEstimateModel _value, $Res Function(_$_LeadEstimateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? client = freezed,
    Object? estimate_date = freezed,
    Object? amount = freezed,
    Object? tax = freezed,
    Object? status = freezed,
    Object? owner = freezed,
    Object? cost_center = freezed,
    Object? permission = freezed,
  }) {
    return _then(_$_LeadEstimateModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      estimate_date: freezed == estimate_date
          ? _value.estimate_date
          : estimate_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      cost_center: freezed == cost_center
          ? _value.cost_center
          : cost_center // ignore: cast_nullable_to_non_nullable
              as CostCenter?,
      permission: freezed == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as Permission?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeadEstimateModel implements _LeadEstimateModel {
  const _$_LeadEstimateModel(
      {this.id,
      this.name,
      this.client,
      this.estimate_date,
      this.amount,
      this.tax,
      this.status,
      this.owner,
      this.cost_center,
      this.permission});

  factory _$_LeadEstimateModel.fromJson(Map<String, dynamic> json) =>
      _$$_LeadEstimateModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final Client? client;
  @override
  final DateTime? estimate_date;
  @override
  final String? amount;
  @override
  final String? tax;
  @override
  final String? status;
  @override
  final Owner? owner;
  @override
  final CostCenter? cost_center;
  @override
  final Permission? permission;

  @override
  String toString() {
    return 'LeadEstimateModel(id: $id, name: $name, client: $client, estimate_date: $estimate_date, amount: $amount, tax: $tax, status: $status, owner: $owner, cost_center: $cost_center, permission: $permission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeadEstimateModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.estimate_date, estimate_date) ||
                other.estimate_date == estimate_date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.cost_center, cost_center) ||
                other.cost_center == cost_center) &&
            (identical(other.permission, permission) ||
                other.permission == permission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, client, estimate_date,
      amount, tax, status, owner, cost_center, permission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeadEstimateModelCopyWith<_$_LeadEstimateModel> get copyWith =>
      __$$_LeadEstimateModelCopyWithImpl<_$_LeadEstimateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeadEstimateModelToJson(
      this,
    );
  }
}

abstract class _LeadEstimateModel implements LeadEstimateModel {
  const factory _LeadEstimateModel(
      {final int? id,
      final String? name,
      final Client? client,
      final DateTime? estimate_date,
      final String? amount,
      final String? tax,
      final String? status,
      final Owner? owner,
      final CostCenter? cost_center,
      final Permission? permission}) = _$_LeadEstimateModel;

  factory _LeadEstimateModel.fromJson(Map<String, dynamic> json) =
      _$_LeadEstimateModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  Client? get client;
  @override
  DateTime? get estimate_date;
  @override
  String? get amount;
  @override
  String? get tax;
  @override
  String? get status;
  @override
  Owner? get owner;
  @override
  CostCenter? get cost_center;
  @override
  Permission? get permission;
  @override
  @JsonKey(ignore: true)
  _$$_LeadEstimateModelCopyWith<_$_LeadEstimateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Client _$ClientFromJson(Map<String, dynamic> json) {
  return _Client.fromJson(json);
}

/// @nodoc
mixin _$Client {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get is_lead => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientCopyWith<Client> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCopyWith<$Res> {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) =
      _$ClientCopyWithImpl<$Res, Client>;
  @useResult
  $Res call({int? id, String? name, bool? is_lead});
}

/// @nodoc
class _$ClientCopyWithImpl<$Res, $Val extends Client>
    implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? is_lead = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      is_lead: freezed == is_lead
          ? _value.is_lead
          : is_lead // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$$_ClientCopyWith(_$_Client value, $Res Function(_$_Client) then) =
      __$$_ClientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, bool? is_lead});
}

/// @nodoc
class __$$_ClientCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$_Client>
    implements _$$_ClientCopyWith<$Res> {
  __$$_ClientCopyWithImpl(_$_Client _value, $Res Function(_$_Client) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? is_lead = freezed,
  }) {
    return _then(_$_Client(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      is_lead: freezed == is_lead
          ? _value.is_lead
          : is_lead // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Client implements _Client {
  const _$_Client({this.id, this.name, this.is_lead});

  factory _$_Client.fromJson(Map<String, dynamic> json) =>
      _$$_ClientFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? is_lead;

  @override
  String toString() {
    return 'Client(id: $id, name: $name, is_lead: $is_lead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Client &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.is_lead, is_lead) || other.is_lead == is_lead));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, is_lead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientCopyWith<_$_Client> get copyWith =>
      __$$_ClientCopyWithImpl<_$_Client>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientToJson(
      this,
    );
  }
}

abstract class _Client implements Client {
  const factory _Client(
      {final int? id, final String? name, final bool? is_lead}) = _$_Client;

  factory _Client.fromJson(Map<String, dynamic> json) = _$_Client.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  bool? get is_lead;
  @override
  @JsonKey(ignore: true)
  _$$_ClientCopyWith<_$_Client> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$_OwnerCopyWith(_$_Owner value, $Res Function(_$_Owner) then) =
      __$$_OwnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$_OwnerCopyWithImpl<$Res> extends _$OwnerCopyWithImpl<$Res, _$_Owner>
    implements _$$_OwnerCopyWith<$Res> {
  __$$_OwnerCopyWithImpl(_$_Owner _value, $Res Function(_$_Owner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Owner(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Owner implements _Owner {
  const _$_Owner({this.id, this.name});

  factory _$_Owner.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Owner(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Owner &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      __$$_OwnerCopyWithImpl<_$_Owner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner({final String? id, final String? name}) = _$_Owner;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$_Owner.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      throw _privateConstructorUsedError;
}

CostCenter _$CostCenterFromJson(Map<String, dynamic> json) {
  return _CostCenter.fromJson(json);
}

/// @nodoc
mixin _$CostCenter {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostCenterCopyWith<CostCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostCenterCopyWith<$Res> {
  factory $CostCenterCopyWith(
          CostCenter value, $Res Function(CostCenter) then) =
      _$CostCenterCopyWithImpl<$Res, CostCenter>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$CostCenterCopyWithImpl<$Res, $Val extends CostCenter>
    implements $CostCenterCopyWith<$Res> {
  _$CostCenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CostCenterCopyWith<$Res>
    implements $CostCenterCopyWith<$Res> {
  factory _$$_CostCenterCopyWith(
          _$_CostCenter value, $Res Function(_$_CostCenter) then) =
      __$$_CostCenterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$_CostCenterCopyWithImpl<$Res>
    extends _$CostCenterCopyWithImpl<$Res, _$_CostCenter>
    implements _$$_CostCenterCopyWith<$Res> {
  __$$_CostCenterCopyWithImpl(
      _$_CostCenter _value, $Res Function(_$_CostCenter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CostCenter(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostCenter implements _CostCenter {
  const _$_CostCenter({this.id, this.name});

  factory _$_CostCenter.fromJson(Map<String, dynamic> json) =>
      _$$_CostCenterFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'CostCenter(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CostCenter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CostCenterCopyWith<_$_CostCenter> get copyWith =>
      __$$_CostCenterCopyWithImpl<_$_CostCenter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostCenterToJson(
      this,
    );
  }
}

abstract class _CostCenter implements CostCenter {
  const factory _CostCenter({final String? id, final String? name}) =
      _$_CostCenter;

  factory _CostCenter.fromJson(Map<String, dynamic> json) =
      _$_CostCenter.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CostCenterCopyWith<_$_CostCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

Permission _$PermissionFromJson(Map<String, dynamic> json) {
  return _Permission.fromJson(json);
}

/// @nodoc
mixin _$Permission {
  bool? get can_edit => throw _privateConstructorUsedError;
  bool? get can_delete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionCopyWith<Permission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionCopyWith<$Res> {
  factory $PermissionCopyWith(
          Permission value, $Res Function(Permission) then) =
      _$PermissionCopyWithImpl<$Res, Permission>;
  @useResult
  $Res call({bool? can_edit, bool? can_delete});
}

/// @nodoc
class _$PermissionCopyWithImpl<$Res, $Val extends Permission>
    implements $PermissionCopyWith<$Res> {
  _$PermissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? can_edit = freezed,
    Object? can_delete = freezed,
  }) {
    return _then(_value.copyWith(
      can_edit: freezed == can_edit
          ? _value.can_edit
          : can_edit // ignore: cast_nullable_to_non_nullable
              as bool?,
      can_delete: freezed == can_delete
          ? _value.can_delete
          : can_delete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PermissionCopyWith<$Res>
    implements $PermissionCopyWith<$Res> {
  factory _$$_PermissionCopyWith(
          _$_Permission value, $Res Function(_$_Permission) then) =
      __$$_PermissionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? can_edit, bool? can_delete});
}

/// @nodoc
class __$$_PermissionCopyWithImpl<$Res>
    extends _$PermissionCopyWithImpl<$Res, _$_Permission>
    implements _$$_PermissionCopyWith<$Res> {
  __$$_PermissionCopyWithImpl(
      _$_Permission _value, $Res Function(_$_Permission) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? can_edit = freezed,
    Object? can_delete = freezed,
  }) {
    return _then(_$_Permission(
      can_edit: freezed == can_edit
          ? _value.can_edit
          : can_edit // ignore: cast_nullable_to_non_nullable
              as bool?,
      can_delete: freezed == can_delete
          ? _value.can_delete
          : can_delete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Permission implements _Permission {
  const _$_Permission({this.can_edit, this.can_delete});

  factory _$_Permission.fromJson(Map<String, dynamic> json) =>
      _$$_PermissionFromJson(json);

  @override
  final bool? can_edit;
  @override
  final bool? can_delete;

  @override
  String toString() {
    return 'Permission(can_edit: $can_edit, can_delete: $can_delete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Permission &&
            (identical(other.can_edit, can_edit) ||
                other.can_edit == can_edit) &&
            (identical(other.can_delete, can_delete) ||
                other.can_delete == can_delete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, can_edit, can_delete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermissionCopyWith<_$_Permission> get copyWith =>
      __$$_PermissionCopyWithImpl<_$_Permission>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PermissionToJson(
      this,
    );
  }
}

abstract class _Permission implements Permission {
  const factory _Permission({final bool? can_edit, final bool? can_delete}) =
      _$_Permission;

  factory _Permission.fromJson(Map<String, dynamic> json) =
      _$_Permission.fromJson;

  @override
  bool? get can_edit;
  @override
  bool? get can_delete;
  @override
  @JsonKey(ignore: true)
  _$$_PermissionCopyWith<_$_Permission> get copyWith =>
      throw _privateConstructorUsedError;
}
