// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_duo_amount_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getDuoAmountHash() => r'b21a850a29631bffd72c50aee5b2047e60e748e2';

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

typedef GetDuoAmountRef = AutoDisposeFutureProviderRef<DuoAmountModel>;

/// See also [getDuoAmount].
@ProviderFor(getDuoAmount)
const getDuoAmountProvider = GetDuoAmountFamily();

/// See also [getDuoAmount].
class GetDuoAmountFamily extends Family<AsyncValue<DuoAmountModel>> {
  /// See also [getDuoAmount].
  const GetDuoAmountFamily();

  /// See also [getDuoAmount].
  GetDuoAmountProvider call({
    required String projectId,
  }) {
    return GetDuoAmountProvider(
      projectId: projectId,
    );
  }

  @override
  GetDuoAmountProvider getProviderOverride(
    covariant GetDuoAmountProvider provider,
  ) {
    return call(
      projectId: provider.projectId,
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
  String? get name => r'getDuoAmountProvider';
}

/// See also [getDuoAmount].
class GetDuoAmountProvider extends AutoDisposeFutureProvider<DuoAmountModel> {
  /// See also [getDuoAmount].
  GetDuoAmountProvider({
    required this.projectId,
  }) : super.internal(
          (ref) => getDuoAmount(
            ref,
            projectId: projectId,
          ),
          from: getDuoAmountProvider,
          name: r'getDuoAmountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getDuoAmountHash,
          dependencies: GetDuoAmountFamily._dependencies,
          allTransitiveDependencies:
              GetDuoAmountFamily._allTransitiveDependencies,
        );

  final String projectId;

  @override
  bool operator ==(Object other) {
    return other is GetDuoAmountProvider && other.projectId == projectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
