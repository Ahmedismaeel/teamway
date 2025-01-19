// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pt_cash_transactions_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ptCashTransactionsHash() =>
    r'7afb62904b8145a83b54f4e716f5586044f7169b';

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

typedef PtCashTransactionsRef
    = AutoDisposeFutureProviderRef<List<PtTransactionModel>>;

/// See also [ptCashTransactions].
@ProviderFor(ptCashTransactions)
const ptCashTransactionsProvider = PtCashTransactionsFamily();

/// See also [ptCashTransactions].
class PtCashTransactionsFamily
    extends Family<AsyncValue<List<PtTransactionModel>>> {
  /// See also [ptCashTransactions].
  const PtCashTransactionsFamily();

  /// See also [ptCashTransactions].
  PtCashTransactionsProvider call({
    required DateTime startDate,
    required DateTime endDate,
  }) {
    return PtCashTransactionsProvider(
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  PtCashTransactionsProvider getProviderOverride(
    covariant PtCashTransactionsProvider provider,
  ) {
    return call(
      startDate: provider.startDate,
      endDate: provider.endDate,
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
  String? get name => r'ptCashTransactionsProvider';
}

/// See also [ptCashTransactions].
class PtCashTransactionsProvider
    extends AutoDisposeFutureProvider<List<PtTransactionModel>> {
  /// See also [ptCashTransactions].
  PtCashTransactionsProvider({
    required this.startDate,
    required this.endDate,
  }) : super.internal(
          (ref) => ptCashTransactions(
            ref,
            startDate: startDate,
            endDate: endDate,
          ),
          from: ptCashTransactionsProvider,
          name: r'ptCashTransactionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ptCashTransactionsHash,
          dependencies: PtCashTransactionsFamily._dependencies,
          allTransitiveDependencies:
              PtCashTransactionsFamily._allTransitiveDependencies,
        );

  final DateTime startDate;
  final DateTime endDate;

  @override
  bool operator ==(Object other) {
    return other is PtCashTransactionsProvider &&
        other.startDate == startDate &&
        other.endDate == endDate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, startDate.hashCode);
    hash = _SystemHash.combine(hash, endDate.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
