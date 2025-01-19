// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_replies_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getLeadCommentRepliesHash() =>
    r'208e6505851d0410deffe5027e08f1ca18d69606';

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

typedef GetLeadCommentRepliesRef
    = AutoDisposeFutureProviderRef<List<LeadCommentModel>>;

/// See also [getLeadCommentReplies].
@ProviderFor(getLeadCommentReplies)
const getLeadCommentRepliesProvider = GetLeadCommentRepliesFamily();

/// See also [getLeadCommentReplies].
class GetLeadCommentRepliesFamily
    extends Family<AsyncValue<List<LeadCommentModel>>> {
  /// See also [getLeadCommentReplies].
  const GetLeadCommentRepliesFamily();

  /// See also [getLeadCommentReplies].
  GetLeadCommentRepliesProvider call({
    required String commentId,
  }) {
    return GetLeadCommentRepliesProvider(
      commentId: commentId,
    );
  }

  @override
  GetLeadCommentRepliesProvider getProviderOverride(
    covariant GetLeadCommentRepliesProvider provider,
  ) {
    return call(
      commentId: provider.commentId,
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
  String? get name => r'getLeadCommentRepliesProvider';
}

/// See also [getLeadCommentReplies].
class GetLeadCommentRepliesProvider
    extends AutoDisposeFutureProvider<List<LeadCommentModel>> {
  /// See also [getLeadCommentReplies].
  GetLeadCommentRepliesProvider({
    required this.commentId,
  }) : super.internal(
          (ref) => getLeadCommentReplies(
            ref,
            commentId: commentId,
          ),
          from: getLeadCommentRepliesProvider,
          name: r'getLeadCommentRepliesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLeadCommentRepliesHash,
          dependencies: GetLeadCommentRepliesFamily._dependencies,
          allTransitiveDependencies:
              GetLeadCommentRepliesFamily._allTransitiveDependencies,
        );

  final String commentId;

  @override
  bool operator ==(Object other) {
    return other is GetLeadCommentRepliesProvider &&
        other.commentId == commentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, commentId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
