// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$apiTesterHash() => r'24ee4adf6436384a65f4fe9ae280c0e9b0aacd84';

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

typedef ApiTesterRef = AutoDisposeFutureProviderRef<dynamic>;

/// See also [apiTester].
@ProviderFor(apiTester)
const apiTesterProvider = ApiTesterFamily();

/// See also [apiTester].
class ApiTesterFamily extends Family<AsyncValue<dynamic>> {
  /// See also [apiTester].
  const ApiTesterFamily();

  /// See also [apiTester].
  ApiTesterProvider call({
    required String url,
  }) {
    return ApiTesterProvider(
      url: url,
    );
  }

  @override
  ApiTesterProvider getProviderOverride(
    covariant ApiTesterProvider provider,
  ) {
    return call(
      url: provider.url,
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
  String? get name => r'apiTesterProvider';
}

/// See also [apiTester].
class ApiTesterProvider extends AutoDisposeFutureProvider<dynamic> {
  /// See also [apiTester].
  ApiTesterProvider({
    required this.url,
  }) : super.internal(
          (ref) => apiTester(
            ref,
            url: url,
          ),
          from: apiTesterProvider,
          name: r'apiTesterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$apiTesterHash,
          dependencies: ApiTesterFamily._dependencies,
          allTransitiveDependencies: ApiTesterFamily._allTransitiveDependencies,
        );

  final String url;

  @override
  bool operator ==(Object other) {
    return other is ApiTesterProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
