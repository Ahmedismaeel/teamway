import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_provider.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/string_to_color.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/project/controller/site_status_controller.dart';
import 'package:internal_app/project/model/site_status_mode.dart';
import 'package:internal_app/project/view/comment_view.dart';
import 'package:nb_utils/nb_utils.dart';

class SelectSiteStatus extends ConsumerWidget {
  const SelectSiteStatus({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 120,
      margin: EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: boxDecorationDefault(color: UiColors.white),
      child: ProviderHelperWidget(
          loadingShape: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // const Text(
              //   "Select Site Status",
              //   style: CustomStyle.p18,
              // ),
              // 12.height,
              for (String status in ["loading", "loading", "loading"])
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: boxDecorationDefault(color: UiColors.primary),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        status,
                        style: CustomStyle.p.copyWith(color: UiColors.black),
                      )
                    ],
                  ),
                ).onTap(() {
                  SmartDialog.dismiss(result: status);
                })
            ],
          ),
          function: (list) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // const Text(
                //   "Select Site Status",
                //   style: CustomStyle.p18,
                // ),
                // 12.height,
                for (SiteStatusModel status in list)
                  Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: boxDecorationDefault(
                        color: UiColors.primary.fromHex(status.color.s)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          status.title.s,
                          style: CustomStyle.p.copyWith(color: UiColors.black),
                        )
                      ],
                    ),
                  ).onTap(() {
                    SmartDialog.dismiss(result: status);
                  })
              ],
            );
          },
          listener: ref.watch(siteStatusListProvider)),
    );
  }
}
