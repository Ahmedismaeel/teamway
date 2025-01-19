import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/expenses/view/create_expense_view.dart';
import 'package:internal_app/global/helper/dialog_widget.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/row_button.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/project/controller/add_file_controller.dart';
import 'package:modular_ui/modular_ui.dart';
import 'package:nb_utils/nb_utils.dart';

class AddProjectFileView extends ConsumerStatefulWidget {
  final String projectId;

  const AddProjectFileView(this.projectId, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddProjectFileViewState();
}

class _AddProjectFileViewState extends ConsumerState<AddProjectFileView> {
  List<FileDescription> files = [];
  addFile(FileDescription file) {
    files.add(file);
    setState(() {});
  }

  bool isPrivate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Files"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: [
            Container(
                decoration: boxDecorationDefault(color: UiColors.primary),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  children: [
                    Icon(Icons.add, color: UiColors.white),
                    9.width,
                    Text(
                      "Add File",
                      style: CustomStyle.n.copyWith(color: UiColors.white),
                    ),
                  ],
                )).onTap(() async {
              FileDescription? file = await SmartDialog.show(
                  clickMaskDismiss: false,
                  // alignment: Alignment.bottomCenter,
                  animationType: SmartAnimationType.fade,
                  builder: (BuildContext _) {
                    return AddFileDialog();
                  });
              if (file != null) {
                addFile(file);
              }
            }),
            12.height,
            for (FileDescription file in files)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 9),
                decoration: boxDecorationDefault(),
                margin: EdgeInsets.only(bottom: 9),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.file),
                        Text(
                          "${file.file.path.split("/").last}",
                          style: CustomStyle.n,
                        )
                      ],
                    ),
                    8.height,
                    Text(
                      "${file.description} ",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            12.height,
            files.isEmpty
                ? SizedBox.shrink()
                : MUICheckBox(
                    fillColor: UiColors.primary,
                    iconColor: UiColors.secondary,
                    checked: isPrivate,
                    onChanged: (value) {
                      isPrivate = value;
                      setState(() {});
                    },
                    child:
                        const Text("Is Private Files ", style: CustomStyle.p),
                  ),
            12.height,
            files.isNotEmpty
                ? RowButton(text: "Submit").submit(
                    onTap: (ref) async {
                      await ref.read(addProjectsFileProvider.notifier).addFiles(
                          files: files,
                          isPrivate: isPrivate,
                          projectId: widget.projectId);
                    },
                    provider: addProjectsFileProvider,
                    onSuccess: (onSuccess) {
                      CustomDialog.successDialog(context, okFunction: () {
                        SmartDialog.dismiss();

                        Navigator.pop(context);
                      },
                          successMessage:
                              "Your Files has been added Successfuly");
                    },
                    onFailed: (onFailed) {
                      toast(onFailed);
                    },
                  )
                : SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}

class AddFileDialog extends ConsumerStatefulWidget {
  const AddFileDialog({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddFileDialogState();
}

class _AddFileDialogState extends ConsumerState<AddFileDialog> {
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState

    afterBuildCreated(() async {
      await getFile();
    });
    super.initState();
  }

  File? file;
  getFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      file = File(result.files.single.path!);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecorationDefault(),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Add File",
              style: CustomStyle.p18,
            ),
            Icon(FontAwesomeIcons.xmark).onTap(() {
              SmartDialog.dismiss();
            })
          ],
        ),
        12.height,
        file == null
            ? Container(
                decoration: boxDecorationDefault(),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                child: Row(
                  children: [Icon(Icons.add), 12.width, Text("Add file")],
                ),
              ).onTap(() async {
                await getFile();
              })
            : Row(
                children: [
                  Icon(FontAwesomeIcons.file),
                  2.width,
                  Text("${file?.path.split("/").last}"),
                ],
              ),
        12.height,
        TitleWidget(title: "Description"),
        FormBuilderTextField(
          controller: controller,
          name: "Text",
          // minLines: 4,
          maxLines: 4,
          cursorHeight: 20,
          cursorWidth: 1,
          textInputAction: TextInputAction.done,
          decoration: editTextDecoration(),
        ),
        12.height,
        RowButton(
          text: "Save",
          onTap: () {
            if (file == null) {
              toast("Please Add file to save");
              return;
            }
            SmartDialog.dismiss(
                result:
                    FileDescription(file: file!, description: controller.text));
          },
        ),
      ]),
    );
  }
}
