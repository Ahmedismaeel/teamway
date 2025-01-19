import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/global/helper/api_provider.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/string_to_color.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/project/controller/site_stage_controller.dart';
import 'package:internal_app/project/model/site_stage_model.dart';
import 'package:internal_app/project/view/comment_view.dart';
import 'package:nb_utils/nb_utils.dart';

class SelectSiteStage extends ConsumerWidget {
  const SelectSiteStage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: boxDecorationDefault(color: UiColors.white),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: ProviderHelperWidget(
          loadingShape: Wrap(
            children: [
              for (var stage in [
                "Loading",
                "Loading",
                "Loading",
                "Loading",
                "Loading",
                "Loading",
                "Loading",
                "Loading",
                "Loading",
                "Loading",
              ])
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                  decoration: boxDecorationDefault(color: UiColors.primary),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Text(
                    "${stage}",
                    style: CustomStyle.lpMedium.copyWith(
                        color: UiColors.white, fontWeight: FontWeight.bold),
                  ),
                )
            ],
          ),
          function: (list) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Select Site Stage",
                  style: CustomStyle.p18,
                ),
                12.height,
                Wrap(
                  children: [
                    for (var stage in list)
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 3),
                        decoration: boxDecorationDefault(
                            color: UiColors.primary.fromHex(stage.color.s)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: Text(
                          "${stage.title}",
                          style: CustomStyle.lpMedium.copyWith(
                              color: UiColors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ).onTap(() {
                        SmartDialog.dismiss(result: stage);
                      })
                  ],
                ),
              ],
            );
          },
          listener: ref.watch(siteStageListProvider)),
    );
  }
}
