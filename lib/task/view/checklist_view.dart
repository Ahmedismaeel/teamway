import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/helper/dialog_widget.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:internal_app/task/controller/add_comment_controller.dart';
import 'package:internal_app/task/controller/comment_check_list_controller.dart';
import 'package:internal_app/task/controller/update_check_list_controller.dart';
import 'package:internal_app/task/view/add_checklist_view.dart';
import 'package:internal_app/task/view/add_comment_view.dart';
import 'package:nb_utils/nb_utils.dart';

class CheckListView extends ConsumerWidget {
  final int taskId;
  const CheckListView(this.taskId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderHelperWidget(
        function: (list) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Checklist",
                    style: CustomStyle.p18,
                  ),
                  InkWell(
                    onTap: () {
                      SmartDialog.show(
                        clickMaskDismiss: false,
                        animationType: SmartAnimationType.fade,
                        builder: (BuildContext context) {
                          return AddChecklistView(
                            taskId: taskId,
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: boxDecorationDefault(),
                      padding: EdgeInsets.all(4),
                      child: Row(
                        children: [Icon(Icons.add), Text("Add Checklist")],
                      ),
                    ),
                  )
                ],
              ),
              8.height,
              list.checkLists?.isEmpty == true
                  ? const Center(child: Text("No checklist found"))
                  : ListView.builder(
                      itemCount: list.checkLists?.length ?? 0,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext _, int index) {
                        final check = list.checkLists![index];
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: boxDecorationDefault(),
                          margin: const EdgeInsets.only(bottom: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      ref
                                          .read(
                                              updateCheckListProvider.notifier)
                                          .updateCheckList(
                                              status: check.isChecked == "0"
                                                  ? 1
                                                  : 0,
                                              checkListId: check.id ?? "");
                                    },
                                    child: check.isChecked == "0"
                                        ? const Icon(
                                            Icons.check_box_outline_blank)
                                        : const Icon(Icons.check_box),
                                  ),
                                  5.width,
                                  SizedBox(
                                      width: 250,
                                      child: Text("${check.title}")),
                                ],
                              ),
                              SubmitWidget(
                                onTap: (ref) async {
                                  await ref
                                      .read(
                                          addCommentControllerProvider.notifier)
                                      .removeCheckList(taskId: taskId);
                                },
                                provider: addCommentControllerProvider,
                                onSuccess: (s) {},
                                onFailed: (e) {
                                  "$e".log();
                                  SmartDialog.show(
                                      builder: (BuildContext context) {
                                    return HtmlWidget(e);
                                  });
                                  // myDialog(
                                  //     context,
                                  //     Column(
                                  //       mainAxisSize: MainAxisSize.min,
                                  //       children: [HtmlWidget(e)],
                                  //     ));
                                },
                                child: Icon(
                                  Icons.remove_circle,
                                  size: 18,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
            ],
          );
        },
        listener: ref.watch(commentAndCheckListProvider(taskId: taskId)));
  }
}
