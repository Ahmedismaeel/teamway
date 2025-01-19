// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_by_id_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getLeadByIdHash() => r'ffb893a46cdf99f0180c3c746b75c4721604e2fc';

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

typedef GetLeadByIdRef = AutoDisposeFutureProviderRef<Content>;

/// See also [getLeadById].
@ProviderFor(getLeadById)
const getLeadByIdProvider = GetLeadByIdFamily();

/// See also [getLeadById].
class GetLeadByIdFamily extends Family<AsyncValue<Content>> {
  /// See also [getLeadById].
  const GetLeadByIdFamily();

  /// See also [getLeadById].
  GetLeadByIdProvider call({
    required int leadId,
  }) {
    return GetLeadByIdProvider(
      leadId: leadId,
    );
  }

  @override
  GetLeadByIdProvider getProviderOverride(
    covariant GetLeadByIdProvider provider,
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
  String? get name => r'getLeadByIdProvider';
}

/// See also [getLeadById].
class GetLeadByIdProvider extends AutoDisposeFutureProvider<Content> {
  /// See also [getLeadById].
  GetLeadByIdProvider({
    required this.leadId,
  }) : super.internal(
          (ref) => getLeadById(
            ref,
            leadId: leadId,
          ),
          from: getLeadByIdProvider,
          name: r'getLeadByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLeadByIdHash,
          dependencies: GetLeadByIdFamily._dependencies,
          allTransitiveDependencies:
              GetLeadByIdFamily._allTransitiveDependencies,
        );

  final int leadId;

  @override
  bool operator ==(Object other) {
    return other is GetLeadByIdProvider && other.leadId == leadId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, leadId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
