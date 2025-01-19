// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_dno_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectDnoListHash() => r'6ac39257c7352e3351dd7e56fa0e2203fb059b14';

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

typedef ProjectDnoListRef
    = AutoDisposeFutureProviderRef<List<DeliveryNoteModel>>;

/// See also [projectDnoList].
@ProviderFor(projectDnoList)
const projectDnoListProvider = ProjectDnoListFamily();

/// See also [projectDnoList].
class ProjectDnoListFamily extends Family<AsyncValue<List<DeliveryNoteModel>>> {
  /// See also [projectDnoList].
  const ProjectDnoListFamily();

  /// See also [projectDnoList].
  ProjectDnoListProvider call({
    required int projectId,
  }) {
    return ProjectDnoListProvider(
      projectId: projectId,
    );
  }

  @override
  ProjectDnoListProvider getProviderOverride(
    covariant ProjectDnoListProvider provider,
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
  String? get name => r'projectDnoListProvider';
}

/// See also [projectDnoList].
class ProjectDnoListProvider
    extends AutoDisposeFutureProvider<List<DeliveryNoteModel>> {
  /// See also [projectDnoList].
  ProjectDnoListProvider({
    required this.projectId,
  }) : super.internal(
          (ref) => projectDnoList(
            ref,
            projectId: projectId,
          ),
          from: projectDnoListProvider,
          name: r'projectDnoListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectDnoListHash,
          dependencies: ProjectDnoListFamily._dependencies,
          allTransitiveDependencies:
              ProjectDnoListFamily._allTransitiveDependencies,
        );

  final int projectId;

  @override
  bool operator ==(Object other) {
    return other is ProjectDnoListProvider && other.projectId == projectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
