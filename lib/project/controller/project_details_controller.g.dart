// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectDetailsHash() => r'19332567b1263bc8b37558d80f127627e00b8d02';

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

typedef ProjectDetailsRef = AutoDisposeFutureProviderRef<ProjectDetailsModel>;

/// See also [projectDetails].
@ProviderFor(projectDetails)
const projectDetailsProvider = ProjectDetailsFamily();

/// See also [projectDetails].
class ProjectDetailsFamily extends Family<AsyncValue<ProjectDetailsModel>> {
  /// See also [projectDetails].
  const ProjectDetailsFamily();

  /// See also [projectDetails].
  ProjectDetailsProvider call({
    required int projectId,
  }) {
    return ProjectDetailsProvider(
      projectId: projectId,
    );
  }

  @override
  ProjectDetailsProvider getProviderOverride(
    covariant ProjectDetailsProvider provider,
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
  String? get name => r'projectDetailsProvider';
}

/// See also [projectDetails].
class ProjectDetailsProvider
    extends AutoDisposeFutureProvider<ProjectDetailsModel> {
  /// See also [projectDetails].
  ProjectDetailsProvider({
    required this.projectId,
  }) : super.internal(
          (ref) => projectDetails(
            ref,
            projectId: projectId,
          ),
          from: projectDetailsProvider,
          name: r'projectDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectDetailsHash,
          dependencies: ProjectDetailsFamily._dependencies,
          allTransitiveDependencies:
              ProjectDetailsFamily._allTransitiveDependencies,
        );

  final int projectId;

  @override
  bool operator ==(Object other) {
    return other is ProjectDetailsProvider && other.projectId == projectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
