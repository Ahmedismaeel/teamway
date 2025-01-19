import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/string_to_color.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/task/model/task_model.dart';
import 'package:nb_utils/nb_utils.dart';

class SubtaskWidget extends StatelessWidget {
  final TaskModel task;

  const SubtaskWidget({required this.task, super.key});

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
                width: 230,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${task.title}".capitalizeEachWord(),
                      style: CustomStyle.p,
                    ),
                    8.height,
                    Container(
                      child: Text("${task.title}"),
                    ),
                    8.height,
                    Row(
                      children: [
                        Text("DeadLine: "),
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
                  CacheImage(
                      height: 50,
                      width: 50,
                      image: "${task.assigned_to_avatar}",
                      radius: 200),
                  16.height,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: boxDecorationDefault(
                        color: task.status_color == null
                            ? UiColors.primary
                            : UiColors.primary.fromHex("${task.status_color}")),
                    child: Text(
                      "${task.status}".capitalizeEachWord(),
                      style:
                          CustomStyle.lpMedium.copyWith(color: UiColors.white),
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
