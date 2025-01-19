import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/task/controller/add_comment_controller.dart';
import 'package:nb_utils/nb_utils.dart';

class AddChecklistView extends StatelessWidget {
  final int taskId;
  AddChecklistView({
    super.key,
    required this.taskId,
  });

  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      margin: EdgeInsets.symmetric(horizontal: 6),
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
                child: Icon(
                  Icons.cancel,
                  color: UiColors.error,
                ),
              )
            ],
          ),
          8.height,
          FormBuilderTextField(
            controller: title,
            name: "Text",
            cursorHeight: 20,
            cursorWidth: 1,
            maxLines: null,
            minLines: 2,
            autofocus: true,
            textInputAction: TextInputAction.done,
            decoration: editTextDecoration().copyWith(
              hintText: "Checklist title",
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.email(),
            ]),
          ),
          9.height,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SubmitWidget(
                  onTap: (ref) {
                    ref
                        .read(addCommentControllerProvider.notifier)
                        .addCheckList(taskId: taskId, title: title.text);
                  },
                  provider: addCommentControllerProvider,
                  onSuccess: (success) {
                    toast("Success", bgColor: UiColors.success);
                    SmartDialog.dismiss();
                  },
                  onFailed: (failed) {
                    toast("$failed", bgColor: UiColors.error);
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
                          "Submit",
                          style: CustomStyle.lpMedium
                              .copyWith(color: UiColors.white),
                        ),
                        5.width,
                        Icon(
                          Icons.add,
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
