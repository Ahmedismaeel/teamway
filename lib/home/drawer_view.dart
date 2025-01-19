import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:internal_app/auth/view.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/controller/my_profile_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
        child: Column(
          // mainAxisAlignment: M,
          children: [
            40.height,
            Consumer(
              builder: (context, ref, w) {
                return ProviderHelperWidget(
                  function: (profile) {
                    return Column(
                      children: [
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
                    );
                  },
                  listener: ref.watch(getMyProfileProvider),
                  loadingShape: LoadingShimmer(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                  )),
                );
              },
            ),
            Spacer(),
            InkWell(
              onTap: () {
                SharedPreferenceHelper.instance.removeAuthToken();
                LoginView().launch(context, isNewTask: true);
              },
              child: Row(
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
            30.height
          ],
        ),
      ),
    );
  }
}
