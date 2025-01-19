// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subtasks_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$subTaskListHash() => r'7c553b6b8f20c71551ab456f8e9b215dcd3eb955';

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

typedef SubTaskListRef = AutoDisposeFutureProviderRef<List<TaskModel>>;

/// See also [subTaskList].
@ProviderFor(subTaskList)
const subTaskListProvider = SubTaskListFamily();

/// See also [subTaskList].
class SubTaskListFamily extends Family<AsyncValue<List<TaskModel>>> {
  /// See also [subTaskList].
  const SubTaskListFamily();

  /// See also [subTaskList].
  SubTaskListProvider call({
    required int taskId,
  }) {
    return SubTaskListProvider(
      taskId: taskId,
    );
  }

  @override
  SubTaskListProvider getProviderOverride(
    covariant SubTaskListProvider provider,
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
  String? get name => r'subTaskListProvider';
}

/// See also [subTaskList].
class SubTaskListProvider extends AutoDisposeFutureProvider<List<TaskModel>> {
  /// See also [subTaskList].
  SubTaskListProvider({
    required this.taskId,
  }) : super.internal(
          (ref) => subTaskList(
            ref,
            taskId: taskId,
          ),
          from: subTaskListProvider,
          name: r'subTaskListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$subTaskListHash,
          dependencies: SubTaskListFamily._dependencies,
          allTransitiveDependencies:
              SubTaskListFamily._allTransitiveDependencies,
        );

  final int taskId;

  @override
  bool operator ==(Object other) {
    return other is SubTaskListProvider && other.taskId == taskId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
