import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:internal_app/auth/fcm_controller.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/global/shared/apis.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  login({required String email, required String password}) {
    email.log();
    password.log();
    var formData = FormData.fromMap({"email": email, "password": password});
    postFormDataHelper(state, url: EndPoints.login, body: formData,
        onSuccess: (data) async {
      "${data['token']}".log();

      SharedPreferenceHelper.instance.saveAuthToken("${data['token']}");
      // SmartDialog.showLoading();
      try {
        await ref.read(fCMControllerProvider.notifier).updateFCMToken();
        await InitApis.statusList();
        await InitApis.leadStatusListApi();
        await InitApis.myProfile();
        // await InitApis.leadSourceListApi();
        // await InitApis.siteStatusListApi();
        // await InitApis.projectStatusListApi();
        // await InitApis.paymentModeApi();
        // await InitApis.bankListApi();
        // await InitApis.taxListApi();
        // await InitApis.expenseStatusApi();
        // await InitApis.expensesTeamMemberApi();
        // await InitApis.treasuryListApi();
        // await InitApis.expensesCategoryListApi();
        // await InitApis.teamMemberListApi();
      } catch (e) {}
      // SmartDialog.dismiss();
      state = const SubmitState.success(response: 0);
      ref.invalidateSelf();
    });
  }
}
