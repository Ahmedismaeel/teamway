import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internal_app/auth/view.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/controller/my_profile_controller.dart';
import 'package:internal_app/home/my_notification_view.dart';
import 'package:nb_utils/nb_utils.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: UiColors.white,
      // appBar: AppBar(
      //   title: Text("My Profile"),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: ListView(
          // mainAxisAlignment: M,
          children: [
            // 40.height,

            Consumer(
              builder: (context, ref, w) {
                return ProviderHelperWidget(
                  function: (profile) {
                    return Container(
                      decoration: boxDecorationDefault(),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "My Profile",
                                style: CustomStyle.p18
                                    .copyWith(color: UiColors.primary),
                              ),
                            ],
                          ),
                          8.height,
                          CacheImage(
                              height: 100,
                              width: 100,
                              image: "${profile.avatar}",
                              radius: 200),
                          13.height,
                          Text(
                            "${profile.first_name} ${profile.last_name}",
                            style: CustomStyle.p18,
                          ),
                          4.height,
                          Text(
                            "${profile.email}",
                            style: CustomStyle.p,
                          ),
                          4.height,
                          Text(
                            "${profile.phone}",
                            style: CustomStyle.p,
                          ),
                        ],
                      ),
                    );
                  },
                  listener: ref.watch(getMyProfileProvider),
                  loadingShape: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CacheImage(
                          height: 100, width: 100, image: "s", radius: 200),
                      13.height,
                      Text("user name"),
                      4.height,
                      Text("email"),
                      4.height,
                      Text("phone"),
                    ],
                  ),
                );
              },
            ),
            12.height,
            Container(
                decoration: boxDecorationDefault(border: Border()),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: UiColors.primary,
                    ),
                    Text(
                      "My Notifications",
                      style: CustomStyle.lpMedium.copyWith(),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ).onTap(() {
                  MyNotificationView().launch(context);
                })),
            100.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "App Version 1.1.8",
                  style: CustomStyle.p.copyWith(color: UiColors.secondary),
                ),
              ],
            ),
            100.height,
            InkWell(
              onTap: () {
                SharedPreferenceHelper.instance.removeAuthToken();
                LoginView().launch(context, isNewTask: true);
              },
              child: Container(
                // decoration: boxDecorationDefault(),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      color: UiColors.error,
                    ),
                    5.width,
                    Text(
                      "Logout",
                      style: CustomStyle.p.copyWith(color: UiColors.error),
                    ),
                  ],
                ),
              ),
            ),
            30.height
          ],
        ),
      ),
    );
  }
}
