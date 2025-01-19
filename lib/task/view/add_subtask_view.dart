import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/row_button.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/controller/my_profile_controller.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:internal_app/task/controller/create_task_controller.dart';
import 'package:internal_app/task/controller/update_task_info_controller.dart';
import 'package:nb_utils/nb_utils.dart';

class CreateSubTaskView extends StatefulWidget {
  final TaskModel task;
  const CreateSubTaskView({
    super.key,
    required this.task,
  });

  @override
  State<CreateSubTaskView> createState() => _CreateSubTaskViewState();
}

class _CreateSubTaskViewState extends State<CreateSubTaskView> {
  GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  TextEditingController title = TextEditingController();
  DateTime deadline = DateTime.now();
  DateTime startTime = DateTime.now();

  TextEditingController description = TextEditingController();

  setDeadLine(BuildContext context) async {
    final date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: startTime,
        lastDate: DateTime(2222));
    if (date == null) {
      return;
    }
    deadline = date;
    setState(() {});
  }

  setStartDate(BuildContext context) async {
    final date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: startTime,
        lastDate: DateTime(2222));
    if (date == null) {
      return;
    }
    startTime = date;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Subtask"),
      ),
      body: Consumer(builder: (context, ref, w) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "Title:",
                      style: CustomStyle.p,
                    ),
                  ],
                ),
                FormBuilderTextField(
                  controller: title,
                  name: "title",
                  cursorHeight: 20,
                  cursorWidth: 1,
                  autofocus: true,
                  textInputAction: TextInputAction.done,
                  decoration: editTextDecoration(),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
                12.height,
                const Row(
                  children: [
                    Text(
                      "Description:",
                      style: CustomStyle.p,
                    ),
                  ],
                ),
                FormBuilderTextField(
                  controller: description,
                  name: "description",
                  cursorHeight: 20,
                  cursorWidth: 1,
                  minLines: 4,
                  maxLines: 7,
                  textInputAction: TextInputAction.done,
                  decoration: editTextDecoration(),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
                12.height,
                const Row(
                  children: [
                    Text(
                      "Start Date:",
                      style: CustomStyle.p,
                    ),
                  ],
                ),
                Container(
                  decoration: boxDecorationDefault(
                      color: UiColors.white,
                      border: Border.all(color: UiColors.primary)),
                  height: 35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${startTime.toDate()}",
                        textHeightBehavior: textHeightBehavior,
                        style:
                            CustomStyle.title.copyWith(color: UiColors.primary),
                      )
                    ],
                  ),
                ).onTap(() {
                  setStartDate(context);
                }),
                12.height,
                const Row(
                  children: [
                    Text(
                      "Deadline:",
                      style: CustomStyle.p,
                    ),
                  ],
                ),
                Container(
                  decoration: boxDecorationDefault(
                      color: UiColors.white,
                      border: Border.all(color: UiColors.primary)),
                  height: 35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${deadline.toDate()}",
                        textHeightBehavior: textHeightBehavior,
                        style:
                            CustomStyle.title.copyWith(color: UiColors.primary),
                      )
                    ],
                  ),
                ).onTap(() {
                  setDeadLine(context);
                }),
                36.height,

                SubmitWidget(
                    onTap: (ref) async {
                      formKey.currentState?.validate() != true
                          ? await ref
                              .read(createTaskProvider.notifier)
                              .createNewSubTask(
                                title: title.text,
                                deadline: deadline,
                                start_date: startTime,
                                description: description.text,
                                parentId: widget.task.id ?? 0,
                                assignedTo: widget.task.assigned_to_id ?? 0,
                              )
                          : "";
                    },
                    provider: createTaskProvider,
                    child: const RowButton(text: "Submit"),
                    onSuccess: (s) {
                      Navigator.pop(context);
                      toasty(context, "Success");
                    },
                    onFailed: (onFailed) {
                      toastLong(errorHandler(onFailed));
                    }),
                // Consumer(builder: (_, ref, w) {
                //   return ProviderHelperWidget(
                //     function: (profile) {
                //       return SubmitWidget(
                //           onTap: (ref) async {
                //             formKey.currentState?.validate() != true
                //                 ? await ref
                //                     .read(createTaskProvider.notifier)
                //                     .createNewTask(
                //                         title: title.text,
                //                         deadline: deadline,
                //                         start_date: startTime,
                //                         description: description.text,
                //                         profileId: "${ref.watch(getMyProfileProvider).value?.id ?? "0"}")
                //                 : "";
                //           },
                //           provider: createTaskProvider,
                //           child: const RowButton(text: "Submit"),
                //           onSuccess: (onSuccess) {
                //             "Success $onSuccess".log();
                //             Navigator.pop(context);
                //             toasty(context, "Success");
                //           },
                //           onFailed: (onFailed) {
                //             toastLong(errorHandler(onFailed));
                //           });
                //     },
                //     listener: ref.watch(getMyProfileProvider),
                //   );
                // })
              ],
            ),
          ),
        );
      }),
    );
  }
}
