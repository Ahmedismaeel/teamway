import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/project/controller/add_comment_project_controller.dart';
import 'package:internal_app/project/view/comment_view.dart';
import 'package:nb_utils/nb_utils.dart';

class ReplyCommentView extends StatefulWidget {
  final int commentId;
  final int projectId;
  const ReplyCommentView({
    super.key,
    required this.commentId,
    required this.projectId,
  });

  @override
  State<ReplyCommentView> createState() => _ReplyCommentViewState();
}

class _ReplyCommentViewState extends State<ReplyCommentView> {
  TextEditingController comment = TextEditingController();
  List<XFile> images = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: boxDecorationDefault(color: UiColors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 8.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  SmartDialog.dismiss();
                },
                child: const Icon(
                  Icons.cancel,
                  color: UiColors.error,
                ),
              )
            ],
          ),
          8.height,
          FormBuilderTextField(
            controller: comment,
            name: "Text",
            cursorHeight: 20,
            cursorWidth: 1,
            maxLines: null,
            minLines: 4,
            autofocus: true,
            // textInputAction: TextInputAction.done,
            decoration: editTextDecoration().copyWith(
              hintText: "Add your comment",
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.email(),
            ]),
          ),
          Column(
            children: [
              9.height,
              Row(
                children: [
                  for (var element in images)
                    Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: boxDecorationDefault(
                              image: DecorationImage(
                                  image: FileImage(File(element.path)))),
                          child: Container(
                            width: 60,
                            height: 60,
                            color: Colors.white.withOpacity(0.2),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  images.remove(element);
                                  setState(() {});
                                },
                                child: const Icon(
                                  Icons.delete,
                                  color: UiColors.error,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ],
              )
            ],
          ),
          9.height,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () async {
                        final image = await ImagePicker()
                            .pickImage(source: ImageSource.camera);
                        if (image == null) {
                          return;
                        }
                        images.add(image);
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.add_a_photo,
                        color: UiColors.primary,
                      ),
                    ),
                    18.width,
                    InkWell(
                      onTap: () async {
                        final image = await ImagePicker().pickMultiImage();
                        // .pickImage(source: ImageSource.gallery);
                        if (image == null) {
                          return;
                        }
                        images.addAll(image);
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.image,
                        color: UiColors.primary,
                      ),
                    ),
                  ],
                ),
                SubmitWidget(
                  onTap: (ref) {
                    ref.read(addCommentProjectProvider.notifier).addReply(
                        commentId: widget.commentId.s,
                        images: images,
                        note: comment.text,
                        projectId: widget.projectId.s);
                  },
                  provider: addCommentProjectProvider,
                  onSuccess: (success) {
                    toast("Success", bgColor: UiColors.success);
                    SmartDialog.dismiss();
                  },
                  onFailed: (failed) {
                    SmartDialog.dismiss();
                  },
                  child: Container(
                    decoration: boxDecorationDefault(color: UiColors.primary),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Send",
                          style: CustomStyle.lpMedium
                              .copyWith(color: UiColors.white),
                        ),
                        10.width,
                        const Icon(
                          Icons.send_sharp,
                          size: 20,
                          color: UiColors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
