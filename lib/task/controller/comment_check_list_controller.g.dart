// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_check_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentAndCheckListHash() =>
    r'e322d81c1881a9623cd05c0ea23ba76ea0a8438c';

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

typedef CommentAndCheckListRef
    = AutoDisposeFutureProviderRef<CheckListAndCommentModel>;

/// See also [commentAndCheckList].
@ProviderFor(commentAndCheckList)
const commentAndCheckListProvider = CommentAndCheckListFamily();

/// See also [commentAndCheckList].
class CommentAndCheckListFamily
    extends Family<AsyncValue<CheckListAndCommentModel>> {
  /// See also [commentAndCheckList].
  const CommentAndCheckListFamily();

  /// See also [commentAndCheckList].
  CommentAndCheckListProvider call({
    required int taskId,
  }) {
    return CommentAndCheckListProvider(
      taskId: taskId,
    );
  }

  @override
  CommentAndCheckListProvider getProviderOverride(
    covariant CommentAndCheckListProvider provider,
  ) {
    return call(
      taskId: provider.taskId,
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
  String? get name => r'commentAndCheckListProvider';
}

/// See also [commentAndCheckList].
class CommentAndCheckListProvider
    extends AutoDisposeFutureProvider<CheckListAndCommentModel> {
  /// See also [commentAndCheckList].
  CommentAndCheckListProvider({
    required this.taskId,
  }) : super.internal(
          (ref) => commentAndCheckList(
            ref,
            taskId: taskId,
          ),
          from: commentAndCheckListProvider,
          name: r'commentAndCheckListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentAndCheckListHash,
          dependencies: CommentAndCheckListFamily._dependencies,
          allTransitiveDependencies:
              CommentAndCheckListFamily._allTransitiveDependencies,
        );

  final int taskId;

  @override
  bool operator ==(Object other) {
    return other is CommentAndCheckListProvider && other.taskId == taskId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
