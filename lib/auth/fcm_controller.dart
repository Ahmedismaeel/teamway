import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:internal_app/auth/token_model.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fcm_controller.g.dart';

@riverpod
class FCMController extends _$FCMController {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  updateFCMToken() async {
    try {
      String? token = await FirebaseMessaging.instance.getToken();
      final response = await DioClient.instance.post(EndPoints.fcmToken,
          data: FormData.fromMap({"fcm_token": token}));
    } catch (e) {}
  }
}
