// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_comments_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectCommentListHash() =>
    r'03952e594a48734dc0f50304e81aeebbf09ba6ac';

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

typedef ProjectCommentListRef
    = AutoDisposeFutureProviderRef<List<ProjectCommentModel>>;

/// See also [projectCommentList].
@ProviderFor(projectCommentList)
const projectCommentListProvider = ProjectCommentListFamily();

/// See also [projectCommentList].
class ProjectCommentListFamily
    extends Family<AsyncValue<List<ProjectCommentModel>>> {
  /// See also [projectCommentList].
  const ProjectCommentListFamily();

  /// See also [projectCommentList].
  ProjectCommentListProvider call({
    required String projectId,
  }) {
    return ProjectCommentListProvider(
      projectId: projectId,
    );
  }

  @override
  ProjectCommentListProvider getProviderOverride(
    covariant ProjectCommentListProvider provider,
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
  String? get name => r'projectCommentListProvider';
}

/// See also [projectCommentList].
class ProjectCommentListProvider
    extends AutoDisposeFutureProvider<List<ProjectCommentModel>> {
  /// See also [projectCommentList].
  ProjectCommentListProvider({
    required this.projectId,
  }) : super.internal(
          (ref) => projectCommentList(
            ref,
            projectId: projectId,
          ),
          from: projectCommentListProvider,
          name: r'projectCommentListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectCommentListHash,
          dependencies: ProjectCommentListFamily._dependencies,
          allTransitiveDependencies:
              ProjectCommentListFamily._allTransitiveDependencies,
        );

  final String projectId;

  @override
  bool operator ==(Object other) {
    return other is ProjectCommentListProvider && other.projectId == projectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
