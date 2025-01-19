// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getLeadCommentListHash() =>
    r'd6f651d43e9e1fa5e277c7ab4dc87ca0f5147d1b';

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

typedef GetLeadCommentListRef
    = AutoDisposeFutureProviderRef<List<LeadCommentModel>>;

/// See also [getLeadCommentList].
@ProviderFor(getLeadCommentList)
const getLeadCommentListProvider = GetLeadCommentListFamily();

/// See also [getLeadCommentList].
class GetLeadCommentListFamily
    extends Family<AsyncValue<List<LeadCommentModel>>> {
  /// See also [getLeadCommentList].
  const GetLeadCommentListFamily();

  /// See also [getLeadCommentList].
  GetLeadCommentListProvider call({
    required String leadId,
  }) {
    return GetLeadCommentListProvider(
      leadId: leadId,
    );
  }

  @override
  GetLeadCommentListProvider getProviderOverride(
    covariant GetLeadCommentListProvider provider,
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
  String? get name => r'getLeadCommentListProvider';
}

/// See also [getLeadCommentList].
class GetLeadCommentListProvider
    extends AutoDisposeFutureProvider<List<LeadCommentModel>> {
  /// See also [getLeadCommentList].
  GetLeadCommentListProvider({
    required this.leadId,
  }) : super.internal(
          (ref) => getLeadCommentList(
            ref,
            leadId: leadId,
          ),
          from: getLeadCommentListProvider,
          name: r'getLeadCommentListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLeadCommentListHash,
          dependencies: GetLeadCommentListFamily._dependencies,
          allTransitiveDependencies:
              GetLeadCommentListFamily._allTransitiveDependencies,
        );

  final String leadId;

  @override
  bool operator ==(Object other) {
    return other is GetLeadCommentListProvider && other.leadId == leadId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, leadId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
