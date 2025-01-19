// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_category_items_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCategoryItemHash() => r'bba9020f8b834a6a425699eaacbed65d40bd95d2';

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

typedef GetCategoryItemRef = AutoDisposeFutureProviderRef<List<DropdownModel>>;

/// See also [getCategoryItem].
@ProviderFor(getCategoryItem)
const getCategoryItemProvider = GetCategoryItemFamily();

/// See also [getCategoryItem].
class GetCategoryItemFamily extends Family<AsyncValue<List<DropdownModel>>> {
  /// See also [getCategoryItem].
  const GetCategoryItemFamily();

  /// See also [getCategoryItem].
  GetCategoryItemProvider call({
    required int categoryId,
  }) {
    return GetCategoryItemProvider(
      categoryId: categoryId,
    );
  }

  @override
  GetCategoryItemProvider getProviderOverride(
    covariant GetCategoryItemProvider provider,
  ) {
    return call(
      categoryId: provider.categoryId,
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
  String? get name => r'getCategoryItemProvider';
}

/// See also [getCategoryItem].
class GetCategoryItemProvider
    extends AutoDisposeFutureProvider<List<DropdownModel>> {
  /// See also [getCategoryItem].
  GetCategoryItemProvider({
    required this.categoryId,
  }) : super.internal(
          (ref) => getCategoryItem(
            ref,
            categoryId: categoryId,
          ),
          from: getCategoryItemProvider,
          name: r'getCategoryItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCategoryItemHash,
          dependencies: GetCategoryItemFamily._dependencies,
          allTransitiveDependencies:
              GetCategoryItemFamily._allTransitiveDependencies,
        );

  final int categoryId;

  @override
  bool operator ==(Object other) {
    return other is GetCategoryItemProvider && other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
