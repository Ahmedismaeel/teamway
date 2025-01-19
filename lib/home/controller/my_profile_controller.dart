import 'dart:convert';

import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/home/model/profile_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_profile_controller.g.dart';

@Riverpod(keepAlive: true)
Future<ProfileModel> getMyProfile(GetMyProfileRef ref) async {
  final response = await DioClient.instance.get(EndPoints.myProfile);
  "".log();

  return ProfileModel.fromJson(response.data);
}

ProfileModel? getProfile() {
  final value = SharedPreferenceHelper.instance.userData;
  if (value != null) {
    return ProfileModel.fromJson(json.decode(value));
  }
  return null;
}
