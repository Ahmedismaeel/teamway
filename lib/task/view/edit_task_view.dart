import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/dialog_widget.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/widgets/choose_widget.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/row_button.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/controller/my_profile_controller.dart';
import 'package:internal_app/home/controller/team_member_list_controller.dart';
import 'package:internal_app/home/model/member_model.dart';
import 'package:internal_app/home/model/project_model.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:internal_app/project/view/project_view.dart';
import 'package:internal_app/task/controller/update_task_info_controller.dart';
import 'package:internal_app/task/view/create_task_view.dart';
import 'package:internal_app/task/view/team_members_view.dart';
import 'package:nb_utils/nb_utils.dart';

class EditTaskView extends StatefulWidget {
  final TaskModel task;
  const EditTaskView({super.key, required this.task});

  @override
  State<EditTaskView> createState() => _EditTaskViewState();
}

class _EditTaskViewState extends State<EditTaskView> {
  GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  TextEditingController title = TextEditingController();
  DateTime deadline = DateTime.now();
  DateTime startTime = DateTime.now();

  TextEditingController description = TextEditingController();
  initFunc() {
    if (widget.task.project_id != null) {
      project = ProjectModel(
          id: widget.task.project_id, title: widget.task.project_title);
    }
    member = MemberModel(
        id: widget.task.assigned_to_id,
        title: widget.task.assigned_to_user_name);
    title = TextEditingController(text: widget.task.title);
    description = TextEditingController(text: widget.task.description);
    startTime = widget.task.start_date != null
        ? DateTime.parse(widget.task.start_date!)
        : DateTime(1000, 10, 10);
    deadline = widget.task.deadline != null
        ? widget.task.deadline!
        : DateTime.parse("0000-00-00");

    members.addAll(List.generate(widget.task.collaborators?.length ?? 0, (i) {
      return MemberModel(
          id: widget.task.collaborators?[i].id,
          title: widget.task.collaborators?[i].name);
    }));
    setState(() {});
  }

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
  void initState() {
    afterBuildCreated(() {
      initFunc();
    });
    super.initState();
  }

  late MemberModel member;

  ProjectModel? project;
  List<MemberModel> members = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Task"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        child: Form(
          key: formKey,
          child: ListView(
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
              12.height,
              Row(
                children: [
                  Text(
                    "Project:",
                    style: CustomStyle.p.copyWith(),
                  ),
                ],
              ),
              12.height,
              ChooseWidget(
                title: project?.title ?? ".",
              ).onTap(() async {
                final selectedProject =
                    await SmartDialog.show(builder: (BuildContext context) {
                  return ProjectView(
                    isSelect: true,
                  );
                });

                if (selectedProject != null) {
                  project = selectedProject;
                  setState(() {});
                }
              }),
              12.height,
              Row(
                children: [
                  Text(
                    "Assigned To:",
                    style: CustomStyle.p.copyWith(),
                  ),
                ],
              ),
              12.height,
              Consumer(builder: (context, ref, w) {
                return ProviderHelperWidget(
                  function: (teamMembers) {
                    return InkWell(
                      onTap: () async {
                        final selectedMember = await SmartDialog.show(
                            builder: (BuildContext context) {
                          return SelectMemberWidget(
                            member: member,
                            memberList: teamMembers,
                          );
                        });

                        if (selectedMember != null) {
                          member = selectedMember;
                          setState(() {});
                        }
                      },
                      child: ChooseWidget(title: "${member.title}"),
                    );
                  },
                  listener: ref.watch(getTeamMemberProvider),
                );
              }),
              12.height,
              Row(
                children: [
                  InkWell(
                    onTap: () async {
                      List<MemberModel>? memberList = await SmartDialog.show(
                          animationType: SmartAnimationType.fade,
                          builder: (BuildContext context) {
                            return MemberListView(
                              oldList: members,
                            );
                          });

                      if (memberList != null) {
                        members = memberList;
                        setState(() {});
                      }
                    },
                    child: Container(
                      decoration: boxDecorationDefault(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [Icon(Icons.add), Text("Add collaborators")],
                      ),
                    ),
                  ),
                ],
              ),
              12.height,
              Wrap(
                children: [
                  for (MemberModel item in members)
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      decoration: boxDecorationDefault(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("${item.title}"),
                          8.width,
                          InkWell(
                            onTap: () {
                              members.remove(item);
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.delete,
                              size: 18,
                              color: UiColors.error,
                            ),
                          )
                        ],
                      ),
                    )
                ],
              ),
              36.height,
              SubmitWidget(
                  onTap: (ref) {
                    formKey.currentState?.validate() != true
                        ? ref
                            .read(updateTaskInfoProvider.notifier)
                            .updateTaskInfo(
                                taskId: widget.task.id ?? 0,
                                title: title.text,
                                deadline: deadline,
                                start_date: startTime,
                                description: description.text,
                                projectId: project?.id,
                                collaborators: List.generate(
                                    members.length, (i) => members[i].id ?? 0),
                                assigned_to_id: member.id ?? 0)
                        : "";
                  },
                  provider: updateTaskInfoProvider,
                  child: const RowButton(text: "Update"),
                  onSuccess: (onSuccess) {
                    "onSuccess".log();
                    CustomDialog.successDialog(
                      context,
                      okFunction: () {
                        SmartDialog.dismiss();
                        Navigator.pop(context);
                      },
                      successMessage: 'Your task has been updated successfully',
                    );
                  },
                  onFailed: (onFailed) {
                    toastLong(errorHandler(onFailed));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
