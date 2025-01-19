import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/controller/notrification_controller.dart';
import 'package:internal_app/home/model/notification_list_model.dart';
import 'package:internal_app/leads/view/lead_details_view.dart';
import 'package:internal_app/project/view/project_details_view.dart';
import 'package:internal_app/task/view/task_details.dart';
import 'package:nb_utils/nb_utils.dart';

class MyNotificationView extends ConsumerStatefulWidget {
  const MyNotificationView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyNotificationViewState();
}

class _MyNotificationViewState extends ConsumerState<MyNotificationView> {
  static const _pageSize = 5;

  final PagingController<int, Content> _pagingController =
      PagingController(firstPageKey: 0);

  Future<void> _fetchPage(int pageKey) async {
    try {
      final data =
          await EndPoints.myNotification(pageSize: _pageSize, page: pageKey)
              .test();
      NotificationListModel body = NotificationListModel.fromJson(data);

      final list = body.content ?? [];
      // list.sort((a, b) {
      //   if (a.nextFollowUp == null || b.nextFollowUp == null) {
      //     return 0;
      //   }
      //   return a.nextFollowUp!.compareTo(b.nextFollowUp!);
      // });
      final isLastPage = (body.content?.length ?? 0) < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(list);
      } else {
        final nextPageKey = pageKey + list.length;
        _pagingController.appendPage(list, nextPageKey);
      }
    } catch (error) {
      "$error".log();
      _pagingController.error = error;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Notifications"),
        ),
        body: CustomScrollView(slivers: <Widget>[
          PagedSliverList<int, Content>(
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate<Content>(
                itemBuilder: (context, item, index) => NotificationWidget(
                      notification: item,
                    )),
          ),
        ]));
  }
}

class NotificationWidget extends StatelessWidget {
  final Content notification;
  const NotificationWidget({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecorationDefault(),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.notifications,
                    color: UiColors.secondary,
                  ),
                  5.width,
                  SizedBox(
                    width: 200,
                    child: Text(
                      notification.data?.description ?? "",
                      style: CustomStyle.p.copyWith(color: UiColors.primary),
                    ),
                  ),
                ],
              ),
              Text(notification.created_at.toDate() ?? ""),
            ],
          ),
          4.height,
          Text(
            notification?.data?.title ?? "",
            style: CustomStyle.n.copyWith(color: UiColors.primary),
          ),
          4.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                notification?.data?.body ?? "",
                textAlign: TextAlign.start,
              ),
            ],
          ),
          3.height,
        ],
      ),
    ).onTap(() {
      switch (notification?.data?.module) {
        case "TASK":
          TaskDetails(
            taskId: notification?.data?.entity_id.toInt() ?? 0,
          ).launch(context, pageRouteAnimation: PageRouteAnimation.Fade);
          break;
        case "PROJECT":
          ProjectDetailsView(
            projectId: notification?.data?.entity_id.toInt() ?? 0,
          ).launch(context, pageRouteAnimation: PageRouteAnimation.Fade);
          break;
        case "LEAD":
          LeadDetails(
            leadId: notification?.data?.entity_id.toInt() ?? 0,
          ).launch(context, pageRouteAnimation: PageRouteAnimation.Fade);
          break;

        default:
      }
    });
  }
}
