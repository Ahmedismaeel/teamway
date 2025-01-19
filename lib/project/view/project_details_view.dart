import 'package:core/core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/string_to_color.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/bottom_navigator.dart';
import 'package:internal_app/home/home_view.dart';
import 'package:internal_app/project/controller/project_details_controller.dart';
import 'package:internal_app/project/view/delivery_note_view.dart';
import 'package:internal_app/project/view/details_widget.dart';
import 'package:internal_app/project/view/project_activity_view.dart';
import 'package:internal_app/project/view/project_file_view.dart';
import 'package:internal_app/project/view/project_invoices_view.dart';
import 'package:internal_app/task/controller/my_tasks_controller.dart';
import 'package:internal_app/home/controller/status_list_controller.dart';
import 'package:internal_app/home/filter_task_status_widget.dart';
import 'package:internal_app/home/model/project_model.dart';
import 'package:internal_app/home/model/status_model.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:internal_app/task/controller/update_task_status_controller.dart';
import 'package:internal_app/task/view/create_task_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:search_page/search_page.dart';

import 'package:tab_container/tab_container.dart';

class ProjectDetailsView extends StatefulWidget {
  final int projectId;
  const ProjectDetailsView({Key? key, required this.projectId})
      : super(key: key);

  @override
  State<ProjectDetailsView> createState() => _ProjectDetailsViewState();
}

class _ProjectDetailsViewState extends State<ProjectDetailsView> {
  List<StatusModel> selectStatus = [];
  @override
  void initState() {
    initFunc();
    super.initState();
  }

  initFunc() async {
    final list = getStatusList();
    try {
      selectStatus.add(list.firstWhere((item) => item.id == "1"));
      selectStatus.add(list.firstWhere((item) => item.id == "2"));
      selectStatus.add(list.firstWhere((item) => item.id == "4"));
    } catch (e) {}
    selectStatus.log();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: Navigator.canPop(context),
      onPopInvoked: (s) {
        HomeNavigatorView().launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
      },
      child: Scaffold(
          // appBar: AppBar(
          //   title: InkWell(
          //       onTap: () async {
          //         String? token = await FirebaseMessaging.instance.getToken();
          //         token?.log();
          //       },
          //       child: Text("${widget.project.title}")),
          // ),
          // drawer: HomeDrawer(),
          body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back_ios),
                ).onTap(() {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  } else {
                    HomeNavigatorView().launch(context,
                        isNewTask: true,
                        pageRouteAnimation: PageRouteAnimation.Fade);
                  }
                }),
                SizedBox(
                  width: 200,
                  child: Text(
                    "Project View",
                    style: CustomStyle.p,
                  ),
                ),
                30.width
              ],
            ),
            Expanded(
              child: TabContainer(
                  // controller: TabController(length: null, vsync: null),
                  tabEdge: TabEdge.top,
                  tabsStart: 0.03,
                  tabsEnd: 0.9,
                  tabMaxLength: 200,
                  borderRadius: BorderRadius.circular(10),
                  tabBorderRadius: BorderRadius.circular(10),
                  childPadding: const EdgeInsets.all(20.0),
                  selectedTextStyle: const TextStyle(
                    color: UiColors.primary,
                    fontSize: 15.0,
                  ),
                  unselectedTextStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 13.0,
                  ),
                  colors: const [
                    UiColors.white,
                    UiColors.white,
                    UiColors.white,
                    UiColors.white,
                    UiColors.white
                  ],
                  tabs: const [
                    Text(
                      'Details',
                      style: CustomStyle.lpMedium,
                    ),
                    Text(
                      'Tasks',
                      style: CustomStyle.lpMedium,
                    ),
                    Text(
                      "Files",
                      style: CustomStyle.lpMedium,
                    ),
                    Text(
                      "INV",
                      style: CustomStyle.lpMedium,
                    ),
                    Text(
                      "DO",
                      style: CustomStyle.lpMedium,
                    ),
                  ],
                  children: [
                    ProjectDetailsWidget(projectId: widget.projectId),
                    Consumer(builder: (context, ref, w) {
                      return ProviderHelperWidget(
                          function: (project) {
                            return Scaffold(
                              backgroundColor: UiColors.white,
                              floatingActionButton: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: boxDecorationDefault(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.add, color: UiColors.primary),
                                    Text(
                                      "Add New Task",
                                      style: CustomStyle.p
                                          .copyWith(color: UiColors.primary),
                                    )
                                  ],
                                ),
                              ).onTap(() {
                                CreateTaskView(
                                  project: project,
                                ).launch(context,
                                    pageRouteAnimation:
                                        PageRouteAnimation.Fade);
                              }),
                              body: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0.00),
                                child: Consumer(
                                  builder: (context, ref, w) {
                                    return ProviderHelperWidget(
                                        loadingShape: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 8),
                                          child: ListView.builder(
                                            itemCount: 6,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return const LoadingShimmer(
                                                  child: TaskWidget(
                                                task: TaskModel(),
                                              ));
                                            },
                                          ),
                                        ),
                                        function: (taskList) {
                                          List<Widget> list = [];
                                          taskList.forEach((key, value) {
                                            value.sort((a, b) {
                                              if (a.deadline == null ||
                                                  b.deadline == null) {
                                                return 1;
                                              }
                                              return a.deadline!
                                                  .compareTo(b.deadline!);
                                            });
                                            list.add(ExpansionTile(
                                              initiallyExpanded:
                                                  key == "current",
                                              title: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 4,
                                                      horizontal: 8),
                                                  decoration:
                                                      boxDecorationDefault(),
                                                  child: Row(
                                                    children: [
                                                      const Icon(Icons.task),
                                                      5.width,
                                                      Text(key
                                                          .capitalizeEachWord()),
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
                                          return ListView(children: [
                                            InkWell(
                                              onTap: () => showSearch(
                                                context: context,
                                                delegate: SearchPage(
                                                  onQueryUpdate: print,
                                                  items: [
                                                    ...taskList["earlier"] ??
                                                        [],
                                                    ...taskList["current"] ??
                                                        [],
                                                    ...taskList["later"] ?? []
                                                  ],
                                                  searchLabel: 'Search Tasks',
                                                  suggestion: const Center(
                                                    child: Text(
                                                        'Filter tasks by title, project name'),
                                                  ),
                                                  failure: const Center(
                                                    child: Text(
                                                        'No tasks found :('),
                                                  ),
                                                  filter: (person) => [
                                                    person.title,
                                                    person.project_title,
                                                  ],
                                                  // sort: (a, b) => a.compareTo(b),
                                                  builder: (person) =>
                                                      TaskWidget(task: person)
                                                          .paddingSymmetric(
                                                              horizontal: 12),
                                                ),
                                              ),
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5,
                                                        horizontal: 8),
                                                decoration:
                                                    boxDecorationDefault(),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    const Icon(Icons.search),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            12.height,
                                            ...list
                                          ]);
                                        },
                                        listener: ref.watch(myTasksProvider(
                                            statusList: selectStatus,
                                            projectId: widget.projectId)));
                                  },
                                ),
                              ),
                            );
                          },
                          listener: ref.watch(projectDetailsProvider(
                              projectId: widget.projectId)));
                    }),
                    ProjectFilesView(widget.projectId.s),
                    ProjectInvoicesView(projectId: widget.projectId.s),
                    DeliveryNoteModel(widget.projectId)
                  ]),
            ),
          ],
        ),
      )),
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
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
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
                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
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
