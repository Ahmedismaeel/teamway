// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_estimate_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$leadEstimateListHash() => r'8d343d7870c8f99f1bde157467866cfc1d34d3b0';

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

typedef LeadEstimateListRef
    = AutoDisposeFutureProviderRef<List<LeadEstimateModel>>;

/// See also [leadEstimateList].
@ProviderFor(leadEstimateList)
const leadEstimateListProvider = LeadEstimateListFamily();

/// See also [leadEstimateList].
class LeadEstimateListFamily
    extends Family<AsyncValue<List<LeadEstimateModel>>> {
  /// See also [leadEstimateList].
  const LeadEstimateListFamily();

  /// See also [leadEstimateList].
  LeadEstimateListProvider call({
    required int leadId,
  }) {
    return LeadEstimateListProvider(
      leadId: leadId,
    );
  }

  @override
  LeadEstimateListProvider getProviderOverride(
    covariant LeadEstimateListProvider provider,
  ) {
    return call(
      leadId: provider.leadId,
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
  String? get name => r'leadEstimateListProvider';
}

/// See also [leadEstimateList].
class LeadEstimateListProvider
    extends AutoDisposeFutureProvider<List<LeadEstimateModel>> {
  /// See also [leadEstimateList].
  LeadEstimateListProvider({
    required this.leadId,
  }) : super.internal(
          (ref) => leadEstimateList(
            ref,
            leadId: leadId,
          ),
          from: leadEstimateListProvider,
          name: r'leadEstimateListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$leadEstimateListHash,
          dependencies: LeadEstimateListFamily._dependencies,
          allTransitiveDependencies:
              LeadEstimateListFamily._allTransitiveDependencies,
        );

  final int leadId;

  @override
  bool operator ==(Object other) {
    return other is LeadEstimateListProvider && other.leadId == leadId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, leadId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
