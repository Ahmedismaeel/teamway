import 'dart:async';
import 'dart:convert';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/notification_model.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/leads/view/lead_details_view.dart';
import 'package:internal_app/notification.dart';
import 'package:internal_app/project/view/project_details_view.dart';
import 'package:internal_app/splash_view.dart';
import 'package:internal_app/task/view/task_details.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> main() async {
  //
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceHelper.init();
  await initialize();
  await notificationInit();
  final NotificationAppLaunchDetails? notificationAppLaunchDetails =
      await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

  NotificationModel? notificationModel;
  if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
    notificationModel = NotificationModel.fromJson(json.decode(
        notificationAppLaunchDetails?.notificationResponse?.payload ?? "{}"));
  }

  runApp(ProviderScope(
      child: MyApp(
    notificationModel: notificationModel,
  )));
}

class MyApp extends StatelessWidget {
  final NotificationModel? notificationModel;
  const MyApp({super.key, required this.notificationModel});
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: navKey,
        title: 'TeamWay',
        debugShowCheckedModeBanner: false,
        builder: FlutterSmartDialog.init(
          loadingBuilder: (msg) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: UiColors.primary),
          useMaterial3: true,
        ),
        home: switch (notificationModel?.module) {
          "TASK" => TaskDetails(
              taskId: int.tryParse(notificationModel?.entity_id ?? "") ?? 0,
            ),
          "PROJECT" => ProjectDetailsView(
              projectId: int.tryParse(notificationModel?.entity_id ?? "") ?? 0,
            ),
          "LEAD" => LeadDetails(
              leadId: int.tryParse(notificationModel?.entity_id ?? "") ?? 0,
            ),
          String() => const SplashView(),
          null => const SplashView(),
        });
  }
}
