import 'package:internal_app/global/helper/api_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'api_provider.g.dart';

@riverpod
Future<dynamic> apiTester(ApiTesterRef ref, {required String url}) async {
  return await url.test();
}
