import 'package:core/core.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/string_to_color.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
// import 'package:internal_app/project/controller/project_activity_controller.dart';
import 'package:internal_app/project/model/project_activity_log_model.dart';
import 'package:nb_utils/nb_utils.dart';

class ProjectActivityLog extends ConsumerStatefulWidget {
  final int projectId;
  const ProjectActivityLog({required int this.projectId, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProjectActivityLogState();
}

class _ProjectActivityLogState extends ConsumerState<ProjectActivityLog> {
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
      final response = await DioClient.instance.get(EndPoints.projectActivity(
          projectId: widget.projectId, page: pageKey, pageSize: _pageSize));

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
        appBar: AppBar(
          title: Text("Activity Log"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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

class ActivityWidget extends StatelessWidget {
  final ProjectActivityLogModel item;
  const ActivityWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // decoration: boxDecorationDefault(),
        // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        // margin: const EdgeInsets.only(bottom: 12),
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CacheImage(
                    height: 30,
                    width: 30,
                    image: "${item.created_by_avatar}",
                    radius: 30),
                12.width,
                Text("${item.created_by_user_name}"),
              ],
            ),
            Container(
                decoration: boxDecorationDefault(
                    color: "${item.label_color}".fromHex()),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Text("${item.action}".capitalizeEachWord(),
                    style: CustomStyle.small.copyWith(color: UiColors.white))),
          ],
        ),
        12.height,
        HtmlWidget("${item.log_type_title}"),
        Text("${item.created_at}"),
        12.height,
        DottedLine(
          dashLength: 7,
          dashGapLength: 7,
          lineThickness: 1,
          dashColor: Colors.grey,
          dashGapColor: Colors.transparent,
        ),
        12.height,
      ],
    ));
  }
}
