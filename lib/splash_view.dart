import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/auth/fcm_controller.dart';
import 'package:internal_app/auth/view.dart';
import 'package:internal_app/global/shared/apis.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/home/bottom_navigator.dart';

import 'package:nb_utils/nb_utils.dart';

class SplashView extends StatefulHookConsumerWidget {
  const SplashView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    afterBuildCreated(() async {
      await funx();
    });
    super.initState();
  }

  Future<void> funx() async {
    // await Future.delayed(Durations.short3);
    // await Future.delayed(const Duration(seconds: 8));
    if (SharedPreferenceHelper.instance.isLoggedIn) {
      try {
        await ref.read(fCMControllerProvider.notifier).updateFCMToken();
        await InitApis.statusList();
        await InitApis.leadStatusListApi();

        // await InitApis.myProfile();

        // await InitApis.leadSourceListApi();
        // await InitApis.siteStatusListApi();
        // await InitApis.projectStatusListApi();
        // await InitApis.paymentModeApi();
        // await InitApis.bankListApi();
        // "/////////// >>>>>>>>>>>>>>>>taxListApi ".log();
        // await InitApis.taxListApi();
        // "/////////// >>>>>>>>>>>>>>>>expenseStatusApi ".log();
        // await InitApis.expenseStatusApi();
        // "/////////// >>>>>>>>>>>>>>>>expensesTeamMemberApi ".log();
        // await InitApis.expensesTeamMemberApi();
        // "/////////// >>>>>>>>>>>>>>>>treasuryListApi ".log();
        // await InitApis.treasuryListApi();
        // "/////////// >>>>>>>>>>>>>>>>expensesCategoryListApi ".log();
        // await InitApis.expensesCategoryListApi();
        // "/////////// >>>>>>>>>>>>>>>>teamMemberListApi ".log();
        // await InitApis.teamMemberListApi();
        // "/////////// >>>>>>>>>>>>>>>>end ".log();
      } catch (e) {
        "${e}".log();
      }
      HomeNavigatorView().launch(context, isNewTask: true);
    } else {
      LoginView().launch(context, isNewTask: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.white,
      body: Center(
        child: Image.asset(
          "assets/images/appIcons.png",
          // filterQuality: FilterQuality.low
          width: 80,
        ),
      ),
    );
  }
}
