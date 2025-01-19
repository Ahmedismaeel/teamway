import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_provider.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/dialog_widget.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/message_view.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/project/controller/project_comments_controller.dart';
import 'package:internal_app/project/controller/project_replies_comment_controller.dart';
import 'package:internal_app/project/model/project_comment_model.dart';
import 'package:internal_app/project/view/add_comment_view.dart';
import 'package:internal_app/project/view/reply_view.dart';
import 'package:nb_utils/nb_utils.dart';

class ProjectCommentView extends ConsumerWidget {
  final String projectId;
  ProjectCommentView(
    this.projectId, {
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Comments:",
              style: CustomStyle.p18,
            ),
            12.height,
            Container(
              decoration: boxDecorationDefault(),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: const Row(
                children: [
                  Icon(Icons.add),
                  Text("Add Comment"),
                ],
              ),
            ).onTap(() {
              SmartDialog.show(builder: (BuildContext context) {
                return AddProjectCommentView(
                  projectId: '$projectId',
                );
              });
            }),
          ],
        ),
        12.height,
        ProviderHelperWidget(
            function: (list) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final comment = list[index];
                  return FacebookPostWidget(
                    projectId: projectId,
                    comment: comment,
                  );
                },
              );
            },
            listener:
                ref.watch(projectCommentListProvider(projectId: projectId))),
      ],
    );
  }
}

class FacebookPostWidget extends ConsumerStatefulWidget {
  final bool? isReply;
  final ProjectCommentModel comment;
  final String projectId;
  const FacebookPostWidget({
    super.key,
    required this.comment,
    this.isReply,
    required this.projectId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FacebookPostWidgetState();
}

class _FacebookPostWidgetState extends ConsumerState<FacebookPostWidget> {
  bool replay = false;
  changeRepaly() {
    replay = !replay;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final comment = widget.comment;
    return Column(
      children: [
        Container(
          decoration: boxDecorationDefault(),
          margin: EdgeInsets.only(
              bottom: 12, left: widget.isReply == true ? 20 : 0.00),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.height,
              Row(
                children: [
                  CacheImage(
                      height: 50,
                      width: 50,
                      image: comment.created_by_avatar.s,
                      radius: 100),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        comment.created_by_user_name.s,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        comment.created_at.toDateTime(),
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Html(data: comment.description.s),
              const SizedBox(height: 10),
              Wrap(
                children: [
                  for (var file in [
                    ...(widget.comment.files ?? []),
                  ])
                    InkWell(
                      onTap: () {
                        SmartDialog.show(builder: (BuildContext context) {
                          return InteractiveViewer(
                              maxScale: 5,
                              child: CacheImage(
                                height: 500,
                                width: double.infinity,
                                image: "${file.url}",
                                radius: 2,
                                fit: BoxFit.contain,
                              ));
                        });
                      },
                      child: CacheImage(
                        height: 50,
                        width: 50,
                        image: "${file.url}",
                        radius: 8,
                        fit: BoxFit.contain,
                      ).paddingSymmetric(horizontal: 5, vertical: 3),
                    )
                ],
              ),
              widget.isReply != true
                  ? Column(
                      children: [
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.reply,
                                  color: UiColors.primary,
                                ),
                                Text(
                                  "Reply",
                                  style: CustomStyle.p
                                      .copyWith(color: UiColors.primary),
                                ),
                              ],
                            ).onTap(() {
                              CustomDialog.dialog(context,
                                  widget: ReplyCommentView(
                                    commentId: comment.id.i,
                                    projectId: widget.projectId.toInt(),
                                  ));
                            }),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${comment.total_replies} ",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                1.width,
                                const Icon(Icons.comment),
                              ],
                            ).onTap(() {
                              changeRepaly();
                            }),
                          ],
                        ),
                        10.height,
                      ],
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
        replay
            ? ProviderHelperWidget(
                loadingShape: FacebookPostWidget(
                  comment: ProjectCommentModel(),
                  projectId: widget.projectId.s,
                ),
                function: (replies) {
                  return Column(
                    children: [
                      for (var element in replies)
                        FacebookPostWidget(
                          comment: element,
                          isReply: true,
                          projectId: widget.projectId.s,
                        ),
                    ],
                  );
                  // return Text("$replies");
                },
                listener: ref
                    .watch(repliesCommentProvider(commentId: "${comment.id}")))
            : SizedBox.shrink()
      ],
    );
  }
}
