// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_expenses_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getExpensesListHash() => r'603f612daa7d6fc187adbbe997c3f511fcc0a049';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef GetExpensesListRef = AutoDisposeFutureProviderRef<ExpenseModel>;

/// See also [getExpensesList].
@ProviderFor(getExpensesList)
const getExpensesListProvider = GetExpensesListFamily();

/// See also [getExpensesList].
class GetExpensesListFamily extends Family<AsyncValue<ExpenseModel>> {
  /// See also [getExpensesList].
  const GetExpensesListFamily();

  /// See also [getExpensesList].
  GetExpensesListProvider call({
    required DateTime fromDate,
    required DateTime toDate,
  }) {
    return GetExpensesListProvider(
      fromDate: fromDate,
      toDate: toDate,
    );
  }

  @override
  GetExpensesListProvider getProviderOverride(
    covariant GetExpensesListProvider provider,
  ) {
    return call(
      fromDate: provider.fromDate,
      toDate: provider.toDate,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getExpensesListProvider';
}

/// See also [getExpensesList].
class GetExpensesListProvider extends AutoDisposeFutureProvider<ExpenseModel> {
  /// See also [getExpensesList].
  GetExpensesListProvider({
    required this.fromDate,
    required this.toDate,
  }) : super.internal(
          (ref) => getExpensesList(
            ref,
            fromDate: fromDate,
            toDate: toDate,
          ),
          from: getExpensesListProvider,
          name: r'getExpensesListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getExpensesListHash,
          dependencies: GetExpensesListFamily._dependencies,
          allTransitiveDependencies:
              GetExpensesListFamily._allTransitiveDependencies,
        );

  final DateTime fromDate;
  final DateTime toDate;

  @override
  bool operator ==(Object other) {
    return other is GetExpensesListProvider &&
        other.fromDate == fromDate &&
        other.toDate == toDate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fromDate.hashCode);
    hash = _SystemHash.combine(hash, toDate.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
