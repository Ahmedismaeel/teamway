import 'package:collection/collection.dart';
import 'package:core/core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/string_to_color.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/controller/my_profile_controller.dart';
import 'package:internal_app/home/model/member_model.dart';
import 'package:internal_app/project/view/task_filter_controller.dart';
import 'package:internal_app/pt_cash/controller/pt_cash_summary_controller.dart';
import 'package:internal_app/pt_cash/view/pt_cash_view.dart';
import 'package:internal_app/task/controller/my_tasks_controller.dart';
import 'package:internal_app/home/controller/status_list_controller.dart';
import 'package:internal_app/home/drawer_view.dart';
import 'package:internal_app/home/filter_task_status_widget.dart';
import 'package:internal_app/home/model/status_model.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:internal_app/task/controller/update_task_status_controller.dart';
import 'package:internal_app/task/view/create_task_view.dart';
import 'package:internal_app/task/view/task_details.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:search_page/search_page.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: () async {
              String? token = await FirebaseMessaging.instance.getToken();
              token?.log();
            },
            child: const Text("Task List")),
        actions: [
          Lottie.asset("assets/lottie/task1.json"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () async {
                  // List<StatusModel>? lists =
                  await SmartDialog.show(
                      alignment: Alignment.bottomCenter,
                      builder: (BuildContext _) {
                        return FilterTaskStatusWidget(
                            // oldStatus: selectStatus,
                            );
                      });
                  // if (lists == null) {
                  // } else {
                  //   selectStatus = [];
                  //   selectStatus.addAll(lists);

                  //   setState(() {});
                  // }
                },
                child: const Icon(Icons.filter_alt)),
          )
        ],
      ),
      // drawer: HomeDrawer(),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 80),
        padding: const EdgeInsets.all(12),
        decoration:
            boxDecorationDefault(color: UiColors.white, shape: BoxShape.circle),
        child: const Icon(
          Icons.add,
          size: 30,
          color: UiColors.primary,
        ),
      ).onTap(() {
        CreateTaskView()
            .launch(context, pageRouteAnimation: PageRouteAnimation.Fade);
      }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Consumer(
          builder: (context, ref, w) {
            return ProviderHelperWidget(
                loadingShape: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return TaskWidget(task: TaskModel());
                    },
                  ),
                ),
                function: (taskList) {
                  List<Widget> list = [];
                  taskList.forEach((key, value) {
                    value.sort((a, b) {
                      if (a.deadline == null || b.deadline == null) {
                        return 1;
                      }
                      return a.deadline!.compareTo(b.deadline!);
                    });
                    list.add(ExpansionTile(
                      initiallyExpanded: key == "current",
                      title: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: boxDecorationDefault(),
                          child: Row(
                            children: [
                              Icon(Icons.task),
                              5.width,
                              Text("$key".capitalizeEachWord()),
                            ],
                          )),
                      children: [
                        for (var element in value)
                          TaskWidget(
                            task: element,
                          )
                      ],
                    ));
                  });
                  return RefreshIndicator(
                    onRefresh: () async {
                      ref.invalidate(myTasksProvider(
                          statusList: ref.watch(statusFilterProvider),
                          memberList: ref.watch(memberFilterProvider)));
                      return;
                    },
                    child: ListView(children: [
                      InkWell(
                        onTap: () => showSearch(
                          context: context,
                          delegate: SearchPage(
                            onQueryUpdate: print,
                            items: [
                              ...taskList["earlier"] ?? [],
                              ...taskList["current"] ?? [],
                              ...taskList["later"] ?? []
                            ],
                            searchLabel: 'Search Tasks',
                            suggestion: const Center(
                              child:
                                  Text('Filter tasks by title, project name'),
                            ),
                            failure: const Center(
                              child: Text('No tasks found :('),
                            ),
                            filter: (person) => [
                              person.title,
                              person.project_title,
                            ],
                            // sort: (a, b) => a.compareTo(b),
                            builder: (person) => TaskWidget(task: person)
                                .paddingSymmetric(horizontal: 12),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 8),
                          decoration: boxDecorationDefault(),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.search),
                            ],
                          ),
                        ),
                      ),
                      12.height,
                      ...list
                    ]),
                  );

                  // return taskList.isEmpty == true
                  //     ? const Center(child: Text("No Task Found"))
                  //     : RefreshIndicator(
                  //         onRefresh: () async {
                  //           ref.invalidate(
                  //               myTasksProvider(statusList: selectStatus));
                  //           return;
                  //         },
                  //         child: SearchableList<TaskModel>(
                  //           initialList: taskList,
                  //           itemBuilder: (TaskModel task) => InkWell(
                  //             onTap: () {
                  //               TaskDetails(
                  //                 taskId: task.id ?? 0,
                  //               ).launch(context,
                  //                   pageRouteAnimation:
                  //                       PageRouteAnimation.Fade);
                  //             },
                  //             child: TaskWidget(
                  //               task: task,
                  //             ),
                  //           ),
                  //           filter: (value) => taskList
                  //               .where(
                  //                 (element) =>
                  //                     (element.title
                  //                             ?.toLowerCase()
                  //                             .contains(value) ??
                  //                         false) ||
                  //                     (element.project_title
                  //                             ?.toLowerCase()
                  //                             .contains(value) ??
                  //                         false),
                  //               )
                  //               .toList(),
                  //           emptyWidget: Container(),
                  //           displaySearchIcon: false,
                  //           inputDecoration: editTextDecoration().copyWith(
                  //             prefixIcon: Icon(
                  //               Icons.search,
                  //             ),
                  //           ),
                  //         )

                  //         // ListView.builder(
                  //         //   itemCount: taskList.length,
                  //         //   itemBuilder: (BuildContext context, int index) {
                  //         //     return InkWell(
                  //         //       onTap: () {
                  //         //         TaskDetails(
                  //         //           taskId: taskList[index].id ?? 0,
                  //         //         ).launch(context,
                  //         //             pageRouteAnimation:
                  //         //                 PageRouteAnimation.Fade);
                  //         //       },
                  //         //       child: TaskWidget(
                  //         //         task: taskList[index],
                  //         //       ),
                  //         //     );
                  //         //   },
                  //         // ),
                  //         );
                },
                listener: ref.watch(myTasksProvider(
                    statusList: ref.watch(statusFilterProvider),
                    memberList: ref.watch(memberFilterProvider))));
          },
        ),
      ),
    );
  }
}

class TaskWidget extends StatelessWidget {
  final TaskModel task;

  const TaskWidget({required this.task, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        TaskDetails(
          taskId: task.id ?? 0,
        ).launch(context, pageRouteAnimation: PageRouteAnimation.Fade);
      },
      child: Container(
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
                      task.deadline == null
                          ? Text("No Deadline")
                          : Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              decoration: boxDecorationDefault(
                                  borderRadius: BorderRadius.circular(30),
                                  color: task.deadline!.isToday
                                      ? UiColors.success
                                      : task.deadline!
                                                  .isBefore(DateTime.now()) &&
                                              (task.status != "Done" ||
                                                  task.deadline!.isYesterday)
                                          ? UiColors.error
                                          : UiColors.black),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    task.deadline!.isToday
                                        ? "Today"
                                        : task.deadline!.isTomorrow
                                            ? "Tomorrow"
                                            : task.deadline!.isYesterday
                                                ? "Yesterday"
                                                : task.deadline!.toDate(),
                                    style: CustomStyle.p.copyWith(
                                        color: UiColors.white, fontSize: 12),
                                  )
                                ],
                              ),
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
      ),
    );
  }
}

class UpdateTaskStatusWidget extends StatelessWidget {
  final TaskModel task;
  const UpdateTaskStatusWidget({
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
