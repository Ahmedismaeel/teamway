import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/dialog_widget.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/string_to_color.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/row_button.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/bottom_navigator.dart';
import 'package:internal_app/task/controller/task_by_id_controller.dart';
import 'package:internal_app/home/controller/team_member_list_controller.dart';
import 'package:internal_app/home/home_view.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:internal_app/task/controller/comment_check_list_controller.dart';
import 'package:internal_app/task/controller/subtasks_controller.dart';
import 'package:internal_app/task/controller/update_check_list_controller.dart';
import 'package:internal_app/task/view/add_subtask_view.dart';
import 'package:internal_app/task/view/checklist_view.dart';
import 'package:internal_app/task/view/comment_view.dart';
import 'package:internal_app/task/view/edit_task_view.dart';
import 'package:internal_app/task/view/subtask_list_view.dart';
import 'package:internal_app/task/view/tesk_activity_log_view.dart';

import 'package:internal_app/task/widgets/subtasks_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';

class TaskDetails extends ConsumerWidget {
  final int taskId;
  final bool? isSubTask;

  const TaskDetails({
    required this.taskId,
    super.key,
    this.isSubTask,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(getTeamMemberProvider);
    return PopScope(
      canPop: Navigator.canPop(context),
      onPopInvoked: (s) {
        HomeNavigatorView().launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    } else {
                      HomeNavigatorView().launch(context,
                          isNewTask: true,
                          pageRouteAnimation: PageRouteAnimation.Fade);
                    }
                  },
                  child: const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back_ios),
                  )),
              Text(isSubTask == true ? "SubTask View" : "Task View"),
            ],
          ),
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProviderHelperWidget(
                  loadingShape: const Icon(Icons.edit),
                  errorWidget: const SizedBox.shrink(),
                  function: (taskDetails) {
                    return InkWell(
                        onTap: () {
                          myDialog(
                              context,
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RowButton(
                                    text: "Edit task",
                                    onTap: () {
                                      SmartDialog.dismiss();
                                      EditTaskView(
                                        task: taskDetails,
                                      ).launch(context,
                                          pageRouteAnimation:
                                              PageRouteAnimation.Fade);
                                    },
                                  ),
                                  12.height,
                                  isSubTask == true
                                      ? SizedBox.shrink()
                                      : RowButton(
                                          text: "Add Subtask",
                                          onTap: () {
                                            SmartDialog.dismiss();
                                            CreateSubTaskView(
                                              task: taskDetails,
                                            ).launch(context,
                                                pageRouteAnimation:
                                                    PageRouteAnimation.Fade);
                                          },
                                        )
                                ],
                              ));
                        },
                        child: const Icon(Icons.more_vert));
                  },
                  listener: ref.watch(getTaskByIdProvider(taskId ?? 0))),
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView(
            children: [
              ProviderHelperWidget(
                  loadingShape: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 210,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Hero(
                                  tag: "tasktitle${taskId}",
                                  child: Text(
                                    "Task Title".capitalizeEachWord(),
                                    style: CustomStyle.p,
                                  ),
                                ),
                                8.height,
                                Text("Project Title"),
                                8.height,
                                Row(
                                  children: [
                                    Text("DeadLine: "),
                                    Text("${DateTime.now().toDate()}")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              8.height,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Hero(
                                    tag: "task${taskId}",
                                    child: const CacheImage(
                                        height: 50,
                                        width: 50,
                                        image: "",
                                        radius: 200),
                                  ),
                                ],
                              ),
                              16.height,
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: boxDecorationDefault(
                                      color: UiColors.primary),
                                  child: Row(
                                    children: [
                                      Text(
                                        "status".capitalizeEachWord(),
                                        style: CustomStyle.lpMedium
                                            .copyWith(color: UiColors.white),
                                      ),
                                      5.width,
                                      const Icon(
                                        Icons.edit,
                                        size: 18,
                                        color: UiColors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      10.height,
                    ],
                  ),
                  function: (taskDetails) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 210,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Hero(
                                    tag: "tasktitle${taskId}",
                                    child: Text(
                                      "${taskDetails.title}"
                                          .capitalizeEachWord(),
                                      style: CustomStyle.p,
                                    ),
                                  ),
                                  8.height,
                                  Container(
                                    child: Text("${taskDetails.project_title}"),
                                  ),
                                  8.height,
                                  Row(
                                    children: [
                                      Text("DeadLine: "),
                                      Text("${taskDetails.deadline.toDate()}")
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                8.height,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Hero(
                                      tag: "task${taskId}",
                                      child: CacheImage(
                                          height: 50,
                                          width: 50,
                                          image:
                                              "${taskDetails.assigned_to_avatar}",
                                          radius: 200),
                                    ),
                                  ],
                                ),
                                16.height,
                                InkWell(
                                  onTap: () {
                                    SmartDialog.show(
                                        animationType: SmartAnimationType.fade,
                                        builder: (BuildContext context) {
                                          return UpdateTaskStatusWidget(
                                            task: taskDetails,
                                          );
                                        });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 5),
                                    decoration: boxDecorationDefault(
                                        color: taskDetails.status_color == null
                                            ? UiColors.primary
                                            : UiColors.primary.fromHex(
                                                "${taskDetails.status_color}")),
                                    child: Row(
                                      children: [
                                        Text(
                                          "${taskDetails.status}"
                                              .capitalizeEachWord(),
                                          style: CustomStyle.lpMedium
                                              .copyWith(color: UiColors.white),
                                        ),
                                        5.width,
                                        Icon(
                                          Icons.edit,
                                          size: 18,
                                          color: UiColors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        10.height,
                        10.height,
                        taskDetails.collaborators?.isNotEmpty == true
                            ? Column(
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        "Collaborators: ",
                                        style: CustomStyle.pBold,
                                      ),
                                    ],
                                  ),
                                  12.height,
                                  SizedBox(
                                    width: double.infinity,
                                    height: 90,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        for (Collaborators item
                                            in taskDetails.collaborators ?? [])
                                          Column(
                                            children: [
                                              CacheImage(
                                                  height: 50,
                                                  width: 50,
                                                  image: "${item.avatar}",
                                                  radius: 25),
                                              Text("${item.name}"),
                                            ],
                                          )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            : SizedBox.shrink(),

                        InkWell(
                          onTap: () {
                            TaskActivityLog(taskId).launch(context,
                                pageRouteAnimation: PageRouteAnimation.Slide);
                          },
                          child: Container(
                            decoration: boxDecorationDefault(),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.history),
                                    5.width,
                                    const Text("Activities log"),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                        ),

                        12.height,
                        // ProviderHelperWidget(
                        //     loadingShape: SubtaskListView(task),
                        //     function: (taskDetails) {
                        //       return SubtaskListView(task);
                        //     },
                        //     listener: ref.watch(getTaskByIdProvider(task.id ?? 0))),
                        SubtaskListView(taskDetails), 12.height,
                        CheckListView(taskId),
                        12.height,
                        CommentView(taskId)
                      ],
                    );
                  },
                  listener: ref.watch(getTaskByIdProvider(taskId ?? 0))),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskDetailWidget extends StatelessWidget {
  final String title;
  final String description;
  final DateTime dueDate;
  final bool isCompleted;

  TaskDetailWidget({
    required this.title,
    required this.description,
    required this.dueDate,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Due Date: ${dueDate.toString()}',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            isCompleted
                ? Icon(Icons.check_circle, color: Colors.green)
                : Icon(Icons.radio_button_unchecked),
          ],
        ),
      ),
    );
  }
}
