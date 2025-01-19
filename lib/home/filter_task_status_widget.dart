// import 'package:core/core.dart';
// import 'package:flutter/foundation.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:internal_app/global/helper/string_to_color.dart';
import 'package:internal_app/global/shared/null_extension.dart';
// import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/row_button.dart';
import 'package:internal_app/global/widgets/text_function.dart';
// import 'package:internal_app/home/controller/my_tasks_controller.dart';
import 'package:internal_app/home/controller/status_list_controller.dart';
import 'package:internal_app/home/model/member_model.dart';
import 'package:internal_app/home/model/status_model.dart';
import 'package:internal_app/leads/view/leads_list_view.dart';
import 'package:internal_app/project/view/comment_view.dart';
import 'package:internal_app/project/view/task_filter_controller.dart';
import 'package:internal_app/task/controller/my_tasks_controller.dart';
import 'package:internal_app/task/view/team_members_view.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';

class FilterTaskStatusWidget extends ConsumerStatefulWidget {
  const FilterTaskStatusWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FilterTaskStatusWidgetState();
}

class _FilterTaskStatusWidgetState
    extends ConsumerState<FilterTaskStatusWidget> {
  // @override
  // void initState() {
  //   super.initState();
  //   list.sort((a, b) {
  //     return a.id.s.compareTo(b.id.s);
  //   });
  //   selectStatus.addAll(widget.oldStatus);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: boxDecorationDefault(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14), topRight: Radius.circular(14))),
        child: Wrap(
          // mainAxisSize: MainAxisSize.min,
          children: [
            for (StatusModel status in getStatusList())
              InkWell(
                onTap: () {
                  ref.read(statusFilterProvider.notifier).addOrRemove(status);
                  setState(() {});
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: boxDecorationDefault(
                      color: UiColors.primary.fromHex("${status.color}")),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "${status.title}",
                        style: CustomStyle.lpMedium
                            .copyWith(color: UiColors.white),
                      ),
                      4.width,
                      ref.read(statusFilterProvider.notifier).isSelected(status)
                          ? const Icon(
                              Icons.check_box,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.white,
                            )
                    ],
                  ),
                ),
              ),
            50.height,
            FilterWidget(
              title: 'Select Memeber',
            ).onTap(() async {
              List<MemberModel>? memberList = await SmartDialog.show(
                  animationType: SmartAnimationType.fade,
                  builder: (BuildContext context) {
                    return MemberListView(
                      oldList: ref.watch(memberFilterProvider),
                    );
                  });

              if (memberList != null) {
                ref.read(memberFilterProvider.notifier).addAll(memberList);
                setState(() {});
              }
            }).paddingOnly(top: 12, bottom: 12),
            Wrap(
              children: [
                for (MemberModel member in ref.watch(memberFilterProvider))
                  Container(
                    decoration: boxDecorationDefault(),
                    margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(member.title.s),
                        8.width,
                        Icon(
                          Icons.delete,
                          size: 19,
                        ).onTap(() {
                          ref
                              .read(memberFilterProvider.notifier)
                              .addOrRemove(member);
                          setState(() {});
                        })
                      ],
                    ),
                  )
              ],
            ),
            12.height,
            RowButton(
              text: "Confirm",
              onTap: () {
                "test".log();
                SmartDialog.dismiss();
              },
            ).paddingAll(12)
          ],
        ));
  }
}
