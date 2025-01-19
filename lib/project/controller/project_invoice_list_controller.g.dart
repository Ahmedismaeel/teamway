// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_invoice_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectInvoiceListHash() =>
    r'0cefb716e617955a013535ce0841bdcf0d25a556';

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

typedef ProjectInvoiceListRef
    = AutoDisposeFutureProviderRef<List<ProjectInvoiceModel>>;

/// See also [projectInvoiceList].
@ProviderFor(projectInvoiceList)
const projectInvoiceListProvider = ProjectInvoiceListFamily();

/// See also [projectInvoiceList].
class ProjectInvoiceListFamily
    extends Family<AsyncValue<List<ProjectInvoiceModel>>> {
  /// See also [projectInvoiceList].
  const ProjectInvoiceListFamily();

  /// See also [projectInvoiceList].
  ProjectInvoiceListProvider call({
    required String projectId,
  }) {
    return ProjectInvoiceListProvider(
      projectId: projectId,
    );
  }

  @override
  ProjectInvoiceListProvider getProviderOverride(
    covariant ProjectInvoiceListProvider provider,
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
  String? get name => r'projectInvoiceListProvider';
}

/// See also [projectInvoiceList].
class ProjectInvoiceListProvider
    extends AutoDisposeFutureProvider<List<ProjectInvoiceModel>> {
  /// See also [projectInvoiceList].
  ProjectInvoiceListProvider({
    required this.projectId,
  }) : super.internal(
          (ref) => projectInvoiceList(
            ref,
            projectId: projectId,
          ),
          from: projectInvoiceListProvider,
          name: r'projectInvoiceListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectInvoiceListHash,
          dependencies: ProjectInvoiceListFamily._dependencies,
          allTransitiveDependencies:
              ProjectInvoiceListFamily._allTransitiveDependencies,
        );

  final String projectId;

  @override
  bool operator ==(Object other) {
    return other is ProjectInvoiceListProvider && other.projectId == projectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
