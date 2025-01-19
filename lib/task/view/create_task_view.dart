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
import 'package:internal_app/project/model/project_details_model.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:internal_app/project/view/project_details_view.dart';
import 'package:internal_app/project/view/project_view.dart';
import 'package:internal_app/task/controller/create_task_controller.dart';
import 'package:internal_app/project/controller/get_project_list_controller.dart';
import 'package:internal_app/task/controller/update_task_info_controller.dart';
import 'package:lottie/lottie.dart';
import 'package:modular_ui/modular_ui.dart';
import 'package:nb_utils/nb_utils.dart';

class CreateTaskView extends ConsumerStatefulWidget {
  final ProjectDetailsModel? project;

  const CreateTaskView({
    super.key,
    this.project,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreateTaskViewState();
}

class _CreateTaskViewState extends ConsumerState<CreateTaskView> {
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

  MemberModel? member;

  ProjectModel? project;

  @override
  void initState() {
    // TODO: implement initState

    afterBuildCreated(() {
      "${ref.watch(getMyProfileProvider).asData?.value.toJson()}".log();
      if (widget.project != null) {
        project = ProjectModel(
            client_phone: "",
            title: widget.project?.title,
            id: widget.project?.id);
      }
      member = MemberModel(
          id: ref.watch(getMyProfileProvider).asData?.value.id,
          title:
              "${ref.watch(getMyProfileProvider).asData?.value.first_name} ${ref.watch(getMyProfileProvider).asData?.value.last_name}");
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Task "),
        actions: [Lottie.asset("assets/lottie/task1.json")],
      ),
      body: Consumer(builder: (context, ref, w) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: FormBuilder(
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
                  // minLines: 1,
                  maxLines: null,

                  keyboardType: TextInputType.multiline,
                  autofocus: true,
                  enableSuggestions: true,
                  autocorrect: true,
                  onSubmitted: (s) {
                    "s".log();
                  },
                  textInputAction: TextInputAction.newline,
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
                  enableSuggestions: true,
                  autocorrect: true,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,

                  // textInputAction: TextInputAction.none,
                  decoration: editTextDecoration(),
                  // validator: FormBuilderValidators.compose([
                  //   FormBuilderValidators.required(),
                  // ]),
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

                12.height,
                ChooseWidget(
                  title: "${startTime.toDate()}",
                ).onTap(() {
                  hideKeyboard(context);
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
                // Container(
                //   decoration: boxDecorationDefault(
                //       color: UiColors.white,
                //       border: Border.all(color: UiColors.primary)),
                //   height: 35,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Text(
                //         "${deadline.toDate()}",
                //         textHeightBehavior: textHeightBehavior,
                //         style:
                //             CustomStyle.title.copyWith(color: UiColors.primary),
                //       )
                //     ],
                //   ),
                // ),
                12.height,
                ChooseWidget(
                  title: "${deadline.toDate()}",
                ).onTap(() {
                  hideKeyboard(context);
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
                  hideKeyboard(context);
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
                ProviderHelperWidget(
                  function: (teamMembers) {
                    return InkWell(
                      onTap: () async {
                        hideKeyboard(context);
                        final selectedMember = await SmartDialog.show(
                            builder: (BuildContext context) {
                          return SelectMemberWidget(
                            member: member!,
                            memberList: teamMembers,
                          );
                        });

                        if (selectedMember != null) {
                          member = selectedMember;
                          setState(() {});
                        }
                      },
                      child: ChooseWidget(title: "${member?.title}"),
                    );
                  },
                  listener: ref.watch(getTeamMemberProvider),
                ),
                36.height,

                SubmitWidget(
                    onTap: (ref) async {
                      formKey.currentState?.validate() == true
                          ? await ref
                              .read(createTaskProvider.notifier)
                              .createNewTask(
                                  title: title.text,
                                  deadline: deadline,
                                  start_date: startTime,
                                  description: description.text,
                                  assignedTo: member?.id ?? 0,
                                  projectId: project?.id)
                          : "";
                    },
                    provider: createTaskProvider,
                    child: const RowButton(text: "Submit"),
                    onSuccess: (s) {
                      "onSuccess".log();
                      CustomDialog.successDialog(
                        context,
                        okFunction: () {
                          SmartDialog.dismiss();
                          Navigator.pop(context);
                        },
                        successMessage: 'Your task has been added successfully',
                      );
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

class SelectProjectWidget extends ConsumerWidget {
  const SelectProjectWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 700,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: boxDecorationDefault(),
      child: ProviderHelperWidget(
          loadingShape: ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return const ProjectWidget(
                  project: ProjectModel(id: 1, title: "title"));
            },
          ),
          function: (list) {
            return ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                final project = list[index];

                return InkWell(
                    onTap: () {
                      ProjectDetailsView(
                        projectId: project.id ?? 0,
                      ).launch(context,
                          pageRouteAnimation: PageRouteAnimation.Fade);
                    },
                    child: ProjectWidget(project: project));
              },
            );
          },
          listener: ref.watch(getProjectListProvider)),
    );
  }
}

class SelectMemberWidget extends StatelessWidget {
  final MemberModel member;
  final List<MemberModel> memberList;
  const SelectMemberWidget({
    super.key,
    required this.member,
    required this.memberList,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, w) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        decoration: boxDecorationDefault(),
        height: 600,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Stack(
          children: [
            ListView(children: [
              5.height,
              for (var element in memberList)
                InkWell(
                  onTap: () {
                    SmartDialog.dismiss(result: element);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: boxDecorationDefault(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.person),
                        Text(
                          "${element.title}",
                          style: CustomStyle.p,
                        ),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              20.height
            ]),
          ],
        ),
      );
    });
  }
}
