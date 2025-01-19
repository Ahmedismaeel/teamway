import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/helper/dialog_widget.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/message_view.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:internal_app/task/controller/add_comment_controller.dart';
import 'package:internal_app/task/controller/comment_check_list_controller.dart';
import 'package:internal_app/task/view/add_comment_view.dart';
import 'package:nb_utils/nb_utils.dart';

class CommentView extends ConsumerWidget {
  final int taskId;
  CommentView(this.taskId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderHelperWidget(
      listener: ref.watch(commentAndCheckListProvider(taskId: taskId)),
      loadingShape: BubbleSpecialOne(
        text: 'comment',
        isSender: false,
        color: Color(0xFF1B97F3),
        textStyle: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      function: (list) {
        return Column(
          children: [
            8.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Comments:",
                  style: CustomStyle.p18,
                ),
                InkWell(
                  onTap: () {
                    SmartDialog.show(
                      clickMaskDismiss: false,
                      animationType: SmartAnimationType.fade,
                      builder: (BuildContext context) {
                        return AddCommentView(
                          taskId: taskId,
                        );
                      },
                    );
                  },
                  child: Container(
                    decoration: boxDecorationDefault(),
                    padding: EdgeInsets.all(4),
                    child: Row(
                      children: [Icon(Icons.add), Text("Add Comment")],
                    ),
                  ),
                )
              ],
            ),
            8.height,
            list.comments?.isEmpty == true
                ? Center(child: Text("No comments found"))
                : ListView.builder(
                    itemCount: list.comments?.length ?? 0,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final comment = list.comments![index];
                      return Column(
                        children: [
                          5.height,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CacheImage(
                                  height: 30,
                                  width: 30,
                                  image: "${comment.createdByAvatar}",
                                  radius: 200),
                              5.width,
                              Text("${comment.createdByUserName}"
                                  .capitalizeEachWord()),
                            ],
                          ),
                          MessageWidget(
                              message: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Html(data: "${comment.description}"),
                                  SubmitWidget(
                                    provider: addCommentControllerProvider,
                                    onSuccess: (s) {},
                                    onFailed: (e) {
                                      "$e".log();
                                      SmartDialog.show(
                                          builder: (BuildContext context) {
                                        return Html(data: e);
                                      });
                                      // myDialog(
                                      //     context,
                                      //     Column(
                                      //       mainAxisSize: MainAxisSize.min,
                                      //       children: [HtmlWidget(e)],
                                      //     ));
                                    },
                                    onTap: (ref) async {
                                      await ref
                                          .read(addCommentControllerProvider
                                              .notifier)
                                          .removeComment(taskId: taskId);
                                    },
                                    child: Icon(
                                      Icons.delete,
                                      size: 18,
                                      color: UiColors.error,
                                    ),
                                  )
                                ],
                              ),
                              ListView.builder(
                                  itemCount: comment.files?.length ?? 0,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    final file = comment.files![index];
                                    "${file.url}".log();
                                    return InkWell(
                                      onTap: () {
                                        SmartDialog.show(
                                            builder: (BuildContext context) {
                                          return Container(
                                            child: InteractiveViewer(
                                                maxScale: 5,
                                                child: CacheImage(
                                                  height: 500,
                                                  width: double.infinity,
                                                  image: "${file.url}",
                                                  radius: 2,
                                                  fit: BoxFit.contain,
                                                )),
                                          );
                                        });
                                      },
                                      child: InteractiveViewer(
                                        maxScale: 5,
                                        child: CacheImage(
                                          height: 200,
                                          width: 200,
                                          image: "${file.thumbnail}",
                                          radius: 2,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    );
                                  }),
                            ],
                          )),
                        ],
                      );
                    },
                  ),
          ],
        );
      },
    );
  }
}
