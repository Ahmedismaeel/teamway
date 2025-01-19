// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_replies_comment_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repliesCommentHash() => r'2f13e240b085487ad4e7dadb1716222e93cabed3';

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

typedef RepliesCommentRef
    = AutoDisposeFutureProviderRef<List<ProjectCommentModel>>;

/// See also [repliesComment].
@ProviderFor(repliesComment)
const repliesCommentProvider = RepliesCommentFamily();

/// See also [repliesComment].
class RepliesCommentFamily
    extends Family<AsyncValue<List<ProjectCommentModel>>> {
  /// See also [repliesComment].
  const RepliesCommentFamily();

  /// See also [repliesComment].
  RepliesCommentProvider call({
    required String commentId,
  }) {
    return RepliesCommentProvider(
      commentId: commentId,
    );
  }

  @override
  RepliesCommentProvider getProviderOverride(
    covariant RepliesCommentProvider provider,
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
  String? get name => r'repliesCommentProvider';
}

/// See also [repliesComment].
class RepliesCommentProvider
    extends AutoDisposeFutureProvider<List<ProjectCommentModel>> {
  /// See also [repliesComment].
  RepliesCommentProvider({
    required this.commentId,
  }) : super.internal(
          (ref) => repliesComment(
            ref,
            commentId: commentId,
          ),
          from: repliesCommentProvider,
          name: r'repliesCommentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repliesCommentHash,
          dependencies: RepliesCommentFamily._dependencies,
          allTransitiveDependencies:
              RepliesCommentFamily._allTransitiveDependencies,
        );

  final String commentId;

  @override
  bool operator ==(Object other) {
    return other is RepliesCommentProvider && other.commentId == commentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, commentId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
