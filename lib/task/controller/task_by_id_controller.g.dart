// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_by_id_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTaskByIdHash() => r'86f99cfbd682b494d0e40fb6aba91148ead87383';

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

typedef GetTaskByIdRef = AutoDisposeFutureProviderRef<TaskModel>;

/// See also [getTaskById].
@ProviderFor(getTaskById)
const getTaskByIdProvider = GetTaskByIdFamily();

/// See also [getTaskById].
class GetTaskByIdFamily extends Family<AsyncValue<TaskModel>> {
  /// See also [getTaskById].
  const GetTaskByIdFamily();

  /// See also [getTaskById].
  GetTaskByIdProvider call(
    int taskId,
  ) {
    return GetTaskByIdProvider(
      taskId,
    );
  }

  @override
  GetTaskByIdProvider getProviderOverride(
    covariant GetTaskByIdProvider provider,
  ) {
    return call(
      provider.taskId,
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
  String? get name => r'getTaskByIdProvider';
}

/// See also [getTaskById].
class GetTaskByIdProvider extends AutoDisposeFutureProvider<TaskModel> {
  /// See also [getTaskById].
  GetTaskByIdProvider(
    this.taskId,
  ) : super.internal(
          (ref) => getTaskById(
            ref,
            taskId,
          ),
          from: getTaskByIdProvider,
          name: r'getTaskByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTaskByIdHash,
          dependencies: GetTaskByIdFamily._dependencies,
          allTransitiveDependencies:
              GetTaskByIdFamily._allTransitiveDependencies,
        );

  final int taskId;

  @override
  bool operator ==(Object other) {
    return other is GetTaskByIdProvider && other.taskId == taskId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
