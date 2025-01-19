// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_activity_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectActivityHash() => r'3ab7caa9820cd40f0e485d6ff7cc32bef34c228d';

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

typedef ProjectActivityRef
    = AutoDisposeFutureProviderRef<List<ProjectActivityLogModel>>;

/// See also [projectActivity].
@ProviderFor(projectActivity)
const projectActivityProvider = ProjectActivityFamily();

/// See also [projectActivity].
class ProjectActivityFamily
    extends Family<AsyncValue<List<ProjectActivityLogModel>>> {
  /// See also [projectActivity].
  const ProjectActivityFamily();

  /// See also [projectActivity].
  ProjectActivityProvider call({
    required int projectId,
    required int page,
    required int pageSize,
  }) {
    return ProjectActivityProvider(
      projectId: projectId,
      page: page,
      pageSize: pageSize,
    );
  }

  @override
  ProjectActivityProvider getProviderOverride(
    covariant ProjectActivityProvider provider,
  ) {
    return call(
      projectId: provider.projectId,
      page: provider.page,
      pageSize: provider.pageSize,
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
  String? get name => r'projectActivityProvider';
}

/// See also [projectActivity].
class ProjectActivityProvider
    extends AutoDisposeFutureProvider<List<ProjectActivityLogModel>> {
  /// See also [projectActivity].
  ProjectActivityProvider({
    required this.projectId,
    required this.page,
    required this.pageSize,
  }) : super.internal(
          (ref) => projectActivity(
            ref,
            projectId: projectId,
            page: page,
            pageSize: pageSize,
          ),
          from: projectActivityProvider,
          name: r'projectActivityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectActivityHash,
          dependencies: ProjectActivityFamily._dependencies,
          allTransitiveDependencies:
              ProjectActivityFamily._allTransitiveDependencies,
        );

  final int projectId;
  final int page;
  final int pageSize;

  @override
  bool operator ==(Object other) {
    return other is ProjectActivityProvider &&
        other.projectId == projectId &&
        other.page == page &&
        other.pageSize == pageSize;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, pageSize.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
