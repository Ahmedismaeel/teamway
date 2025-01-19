// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_project_file_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectFileListHash() => r'b5a4c30a2081a74789e24498a6c9e95cefad506c';

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

typedef ProjectFileListRef
    = AutoDisposeFutureProviderRef<List<ProjectFileModel>>;

/// See also [projectFileList].
@ProviderFor(projectFileList)
const projectFileListProvider = ProjectFileListFamily();

/// See also [projectFileList].
class ProjectFileListFamily extends Family<AsyncValue<List<ProjectFileModel>>> {
  /// See also [projectFileList].
  const ProjectFileListFamily();

  /// See also [projectFileList].
  ProjectFileListProvider call({
    required String projectId,
  }) {
    return ProjectFileListProvider(
      projectId: projectId,
    );
  }

  @override
  ProjectFileListProvider getProviderOverride(
    covariant ProjectFileListProvider provider,
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
  String? get name => r'projectFileListProvider';
}

/// See also [projectFileList].
class ProjectFileListProvider
    extends AutoDisposeFutureProvider<List<ProjectFileModel>> {
  /// See also [projectFileList].
  ProjectFileListProvider({
    required this.projectId,
  }) : super.internal(
          (ref) => projectFileList(
            ref,
            projectId: projectId,
          ),
          from: projectFileListProvider,
          name: r'projectFileListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectFileListHash,
          dependencies: ProjectFileListFamily._dependencies,
          allTransitiveDependencies:
              ProjectFileListFamily._allTransitiveDependencies,
        );

  final String projectId;

  @override
  bool operator ==(Object other) {
    return other is ProjectFileListProvider && other.projectId == projectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
