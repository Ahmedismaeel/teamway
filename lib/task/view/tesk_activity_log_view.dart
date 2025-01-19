import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/project/model/project_activity_log_model.dart';
import 'package:internal_app/project/view/project_activity_view.dart';

class TaskActivityLog extends ConsumerStatefulWidget {
  final int taskId;
  const TaskActivityLog(this.taskId, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskActivityLogState();
}

class _TaskActivityLogState extends ConsumerState<TaskActivityLog> {
  static const _pageSize = 5;

  final PagingController<int, ProjectActivityLogModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final response = await DioClient.instance.get(EndPoints.taskActivity(
          taskId: widget.taskId, page: pageKey, pageSize: _pageSize));

      List<ProjectActivityLogModel> list = [];
      response.data["activity_logs"].forEach((activity) {
        list.add(ProjectActivityLogModel.fromJson(activity));
      });
      final isLastPage = list.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(list);
      } else {
        final nextPageKey = pageKey + list.length;
        _pagingController.appendPage(list, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: PagedListView<int, ProjectActivityLogModel>(
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate<ProjectActivityLogModel>(
              itemBuilder: (context, item, index) => ActivityWidget(
                item: item,
              ),
            ),
          ),
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
