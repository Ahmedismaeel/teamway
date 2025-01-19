// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_tasks_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myTasksHash() => r'9e6077431bbce3fb7dd8e931b74f2d4427dc8e21';

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

typedef MyTasksRef = AutoDisposeFutureProviderRef<Map<String, List<TaskModel>>>;

/// See also [myTasks].
@ProviderFor(myTasks)
const myTasksProvider = MyTasksFamily();

/// See also [myTasks].
class MyTasksFamily extends Family<AsyncValue<Map<String, List<TaskModel>>>> {
  /// See also [myTasks].
  const MyTasksFamily();

  /// See also [myTasks].
  MyTasksProvider call({
    required List<StatusModel> statusList,
    List<MemberModel>? memberList,
    int? projectId,
  }) {
    return MyTasksProvider(
      statusList: statusList,
      memberList: memberList,
      projectId: projectId,
    );
  }

  @override
  MyTasksProvider getProviderOverride(
    covariant MyTasksProvider provider,
  ) {
    return call(
      statusList: provider.statusList,
      memberList: provider.memberList,
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
  String? get name => r'myTasksProvider';
}

/// See also [myTasks].
class MyTasksProvider
    extends AutoDisposeFutureProvider<Map<String, List<TaskModel>>> {
  /// See also [myTasks].
  MyTasksProvider({
    required this.statusList,
    this.memberList,
    this.projectId,
  }) : super.internal(
          (ref) => myTasks(
            ref,
            statusList: statusList,
            memberList: memberList,
            projectId: projectId,
          ),
          from: myTasksProvider,
          name: r'myTasksProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myTasksHash,
          dependencies: MyTasksFamily._dependencies,
          allTransitiveDependencies: MyTasksFamily._allTransitiveDependencies,
        );

  final List<StatusModel> statusList;
  final List<MemberModel>? memberList;
  final int? projectId;

  @override
  bool operator ==(Object other) {
    return other is MyTasksProvider &&
        other.statusList == statusList &&
        other.memberList == memberList &&
        other.projectId == projectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, statusList.hashCode);
    hash = _SystemHash.combine(hash, memberList.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
