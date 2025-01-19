import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/string_to_color.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/controller/status_list_controller.dart';
import 'package:internal_app/home/home_view.dart';
import 'package:internal_app/home/model/status_model.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:internal_app/main.dart';
import 'package:internal_app/task/controller/subtasks_controller.dart';
import 'package:internal_app/task/controller/update_task_status_controller.dart';
import 'package:internal_app/task/view/task_details.dart';
import 'package:internal_app/task/widgets/subtasks_widget.dart';
import 'package:nb_utils/nb_utils.dart';

class SubtaskListView extends ConsumerWidget {
  final TaskModel task;
  const SubtaskListView(this.task, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              "Subtasks:",
              style: CustomStyle.p18,
            ),
          ],
        ),
        ProviderHelperWidget(
            loadingShape: LoadingShimmer(
              child: ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return SubtaskWidget(task: TaskModel());
                },
              ),
            ),
            function: (list) {
              return list.isEmpty
                  ? Center(child: Text("No subtasks found"))
                  : ListView.builder(
                      itemCount: list.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                            onTap: () {
                              TaskDetails(
                                isSubTask: true,
                                taskId: list[index].id ?? 0,
                              ).launch(MyApp.navKey.currentContext ?? context,
                                  pageRouteAnimation: PageRouteAnimation.Fade);
                            },
                            child: TaskWidget(task: list[index]));
                      },
                    );
            },
            listener: ref.watch(subTaskListProvider(taskId: task.id ?? 0))),
      ],
    );
  }
}

class SubTaskWidget extends StatelessWidget {
  final TaskModel task;

  const SubTaskWidget({required this.task, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecorationDefault(
        color: task.id == null ? Colors.transparent : null,
      ),
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: "tasktitle${task.id}",
                      child: Text(
                        "${task.title}".capitalizeEachWord(),
                        style: CustomStyle.p,
                      ),
                    ),
                    8.height,
                    Text("${task.project_title}"),
                    8.height,
                    Row(
                      children: [
                        const Text("DeadLine: "),
                        Text("${task.deadline?.toDate()}")
                      ],
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  8.height,
                  Hero(
                    tag: "task${task.id}",
                    child: CacheImage(
                        height: 50,
                        width: 50,
                        image: "${task.assigned_to_avatar}",
                        radius: 200),
                  ),
                  16.height,
                  InkWell(
                    onTap: () {
                      SmartDialog.show(
                          animationType: SmartAnimationType.fade,
                          builder: (BuildContext context) {
                            return UpdateTaskStatusWidget(
                              task: task,
                            );
                          });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      decoration: boxDecorationDefault(
                          color: task.status_color == null
                              ? UiColors.primary
                              : UiColors.primary
                                  .fromHex("${task.status_color}")),
                      child: Row(
                        children: [
                          Text(
                            "${task.status}".capitalizeEachWord(),
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
    );
  }
}

class UpdateSubTaskStatusWidget extends StatelessWidget {
  final TaskModel task;
  const UpdateSubTaskStatusWidget({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecorationDefault(),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Select Status",
            style: CustomStyle.p18,
          ),
          // 12.height,
          for (StatusModel status in getStatusList())
            SubmitWidget(
              onTap: (ref) {
                ref.read(updateTaskStatusProvider.notifier).updateTask(
                    statusId: status.id ?? "",
                    taskId: task.id ?? 0,
                    parentId: task.parent_id);
              },
              provider: updateTaskStatusProvider,
              onSuccess: (s) {},
              onFailed: (e) {
                SmartDialog.dismiss();
                toastLong(e);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: boxDecorationDefault(
                    color: UiColors.primary.fromHex("${status.color}")),
                child: Row(
                  children: [
                    Text(
                      "${status.title}",
                      style:
                          CustomStyle.lpMedium.copyWith(color: UiColors.white),
                    ),
                    4.width,
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
