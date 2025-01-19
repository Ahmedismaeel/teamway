import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/project/controller/status_list_controller.dart';
import 'package:nb_utils/nb_utils.dart';

class SelectProjectStatusWidget extends ConsumerWidget {
  const SelectProjectStatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: boxDecorationDefault(),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Text(
          //   "Select Status",
          //   style: CustomStyle.p18,
          // ),
          // 12.height,
          ProviderHelperWidget(
              loadingShape: Container(
                width: 100,
                child: Text("loading"),
              ),
              function: (list) {
                return Column(
                  children: [
                    for (var status in list)
                      Container(
                        width: 100,
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration:
                            boxDecorationDefault(color: UiColors.primary),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Text(
                          "$status".capitalizeEachWord(),
                          style: CustomStyle.p.copyWith(color: UiColors.white),
                        ).onTap(() {
                          SmartDialog.dismiss(result: status);
                        }),
                      )
                  ],
                );
              },
              listener: ref.watch(projectStatusListProvider))
        ],
      ),
    );
  }
}
