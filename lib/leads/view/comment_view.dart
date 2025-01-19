import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:internal_app/global/helper/dialog_widget.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/leads/controller/comment_list_controller.dart';
import 'package:internal_app/leads/controller/comment_replies_controller.dart';
import 'package:internal_app/leads/models/lead_comment_model.dart';
import 'package:internal_app/leads/view/add_comment_view.dart';
import 'package:internal_app/project/view/reply_view.dart';
import 'package:nb_utils/nb_utils.dart';

class LeadCommentView extends ConsumerWidget {
  final String leadId;
  LeadCommentView(
    this.leadId, {
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
                return AddLeadCommentView(
                  leadId: '$leadId',
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
                  return LeadCommentWidget(
                    leadId: leadId,
                    comment: comment,
                  );
                },
              );
            },
            listener: ref.watch(getLeadCommentListProvider(leadId: leadId))),
      ],
    );
  }
}

class LeadCommentWidget extends ConsumerStatefulWidget {
  final bool? isReply;
  final LeadCommentModel comment;
  final String leadId;
  const LeadCommentWidget({
    super.key,
    required this.comment,
    this.isReply,
    required this.leadId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LeadCommentWidgetState();
}

class _LeadCommentWidgetState extends ConsumerState<LeadCommentWidget> {
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
                      image: comment.createdByAvatar.s,
                      radius: 100),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        comment.createdByUser.s,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        comment.createdAt.s,
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
                                  widget: AddLeadCommentView(
                                      leadId: widget.leadId,
                                      commentId: comment.id.s));
                            }),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${comment.totalReplies} ",
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
                loadingShape: LeadCommentWidget(
                  comment: LeadCommentModel(),
                  leadId: widget.leadId.s,
                ),
                function: (replies) {
                  return Column(
                    children: [
                      for (var element in replies)
                        LeadCommentWidget(
                          comment: element,
                          isReply: true,
                          leadId: widget.leadId.s,
                        ),
                    ],
                  );
                  // return Text("$replies");
                },
                listener: ref.watch(
                    getLeadCommentRepliesProvider(commentId: "${comment.id}")))
            : SizedBox.shrink()
      ],
    );
  }
}
