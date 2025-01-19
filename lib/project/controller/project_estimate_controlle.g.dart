// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_estimate_controlle.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectEstimateListHash() =>
    r'4b9a2437bfe8b151228793dd653d7362c181f9c8';

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

typedef ProjectEstimateListRef
    = AutoDisposeFutureProviderRef<List<LeadEstimateModel>>;

/// See also [projectEstimateList].
@ProviderFor(projectEstimateList)
const projectEstimateListProvider = ProjectEstimateListFamily();

/// See also [projectEstimateList].
class ProjectEstimateListFamily
    extends Family<AsyncValue<List<LeadEstimateModel>>> {
  /// See also [projectEstimateList].
  const ProjectEstimateListFamily();

  /// See also [projectEstimateList].
  ProjectEstimateListProvider call({
    required int projectId,
  }) {
    return ProjectEstimateListProvider(
      projectId: projectId,
    );
  }

  @override
  ProjectEstimateListProvider getProviderOverride(
    covariant ProjectEstimateListProvider provider,
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
  String? get name => r'projectEstimateListProvider';
}

/// See also [projectEstimateList].
class ProjectEstimateListProvider
    extends AutoDisposeFutureProvider<List<LeadEstimateModel>> {
  /// See also [projectEstimateList].
  ProjectEstimateListProvider({
    required this.projectId,
  }) : super.internal(
          (ref) => projectEstimateList(
            ref,
            projectId: projectId,
          ),
          from: projectEstimateListProvider,
          name: r'projectEstimateListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectEstimateListHash,
          dependencies: ProjectEstimateListFamily._dependencies,
          allTransitiveDependencies:
              ProjectEstimateListFamily._allTransitiveDependencies,
        );

  final int projectId;

  @override
  bool operator ==(Object other) {
    return other is ProjectEstimateListProvider && other.projectId == projectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
