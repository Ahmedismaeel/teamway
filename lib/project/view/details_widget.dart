import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/dialog_widget.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/string_to_color.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/leads/controller/lead_estimate_controller.dart';
import 'package:internal_app/project/controller/change_project_status_controller.dart';
import 'package:internal_app/project/controller/project_details_controller.dart';
import 'package:internal_app/project/controller/project_duo_amount_controller.dart';
import 'package:internal_app/project/controller/project_estimate_controlle.dart';
import 'package:internal_app/project/controller/project_system_type_list_controller.dart';
import 'package:internal_app/project/controller/site_stage_controller.dart';
import 'package:internal_app/project/controller/site_status_controller.dart';
import 'package:internal_app/project/map/choose_location_map.dart';
import 'package:internal_app/project/model/project_details_model.dart';
import 'package:internal_app/project/model/site_stage_model.dart';
import 'package:internal_app/project/model/site_status_mode.dart';
import 'package:internal_app/project/view/comment_view.dart';
import 'package:internal_app/project/view/pdf_view.dart';
import 'package:internal_app/project/view/project_activity_view.dart';
import 'package:internal_app/project/view/widget/select_project_status.dart';
import 'package:internal_app/project/view/widget/select_site_stage.dart';
import 'package:internal_app/project/view/widget/select_site_status.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailsWidget extends StatefulWidget {
  const ProjectDetailsWidget({
    super.key,
    required this.projectId,
  });

  final int projectId;

  @override
  State<ProjectDetailsWidget> createState() => _ProjectDetailsWidgetState();
}

class _ProjectDetailsWidgetState extends State<ProjectDetailsWidget> {
  @override
  void initState() {
    // TODO: implement initState
    afterBuildCreated(() async {
      await EndPoints.projectDetailsV2(projectId: widget.projectId)
          .get<ProjectDetailsModel>(fromJson: ProjectDetailsModel.fromJson);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // func();
    return Consumer(builder: (context, ref, w) {
      return ProviderHelperWidget(
          function: (projectDetatils) {
            return ListView(
              children: [
                12.height,

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Status",
                      style: CustomStyle.p,
                    ),
                    Builder(builder: (builderContext) {
                      return InkWell(
                        onTap: () async {
                          String? status = await CustomDialog.attachDialog(
                              builderContext,
                              widget: SelectProjectStatusWidget());
                          if (status != null) {
                            ref
                                .read(updateProjectStatusProvider.notifier)
                                .changeStatus(
                                    projectId: "${widget.projectId}",
                                    status: status);
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 3),
                          decoration: boxDecorationDefault(
                              color: UiColors.primary,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                              8.width,
                              Text(
                                '${projectDetatils.status}'
                                    .capitalizeEachWord(),
                                style: CustomStyle.lpMedium
                                    .copyWith(color: UiColors.white),
                              ),
                              5.width,
                              const Icon(
                                Icons.edit,
                                color: UiColors.white,
                                size: 15,
                              ),
                              8.width,
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
                12.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Site Status",
                      style: CustomStyle.p,
                    ),
                    Builder(builder: (builderContext) {
                      return InkWell(
                          onTap: () async {
                            SiteStatusModel? value =
                                await CustomDialog.attachDialog(builderContext,
                                    widget: SelectSiteStatus());
                            if (value != null) {
                              ref
                                  .read(updateProjectStatusProvider.notifier)
                                  .updateOperation(
                                      projectId: widget.projectId,
                                      fieldName: "site_status",
                                      value: value.id.s);
                            }
                          },
                          child: ProviderHelperWidget(
                            function: (statusList) {
                              final status = searchSiteStatus(
                                  projectDetatils.site_status_id,
                                  list: statusList);
                              return StatusWidget(
                                color: status?.color,
                                status: status?.title ?? "",
                              );
                            },
                            listener: ref.watch(siteStatusListProvider),
                          ));
                    }),
                  ],
                ),
                12.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Site Stage",
                      style: CustomStyle.p,
                    ),
                    ProviderHelperWidget(
                      function: (stageList) {
                        final stage = searchSiteStage(projectDetatils.stage_id,
                            list: stageList);
                        return Builder(builder: (builderContext) {
                          return InkWell(
                            onTap: () async {
                              SiteStageModel? value =
                                  await CustomDialog.attachDialog(
                                      builderContext,
                                      widget: SelectSiteStage());
                              if (value != null) {
                                ref
                                    .read(updateProjectStatusProvider.notifier)
                                    .updateOperation(
                                        projectId: widget.projectId,
                                        fieldName: "stage",
                                        value: value.id.s);
                              }
                            },
                            child: StatusWidget(
                              color: stage?.color,
                              status: stage?.title.s ?? "",
                            ),
                          );
                        });
                      },
                      listener: ref.watch(siteStageListProvider),
                    )
                  ],
                ),

                17.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Location',
                      style: CustomStyle.p,
                    ),
                    projectDetatils.location != null
                        ? Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 3),
                            decoration: boxDecorationDefault(),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  FontAwesomeIcons.locationArrow,
                                  color: UiColors.primary,
                                ),
                                Text("Open Location"),
                              ],
                            ),
                          ).onTap(() {
                            openMap(projectDetatils.location!);
                          })
                        : SizedBox.shrink(),
                    Icon(
                      Icons.edit,
                      color: UiColors.primary,
                    ).onTap(() {
                      ChooseLocationMap(
                        projectId: projectDetatils.id.s,
                      ).launch(context);
                    })
                  ],
                ),
                12.height,
                ProviderHelperWidget(
                    function: (duoAmount) {
                      return ItemWidget(
                        title: 'Project Duo Amount',
                        desc: '${duoAmount.due}',
                      );
                    },
                    listener: ref.watch(
                        GetDuoAmountProvider(projectId: widget.projectId.s))),
                12.height,
                Row(
                  children: [
                    (projectDetatils.ready ?? false)
                        ? Icon(Icons.check_box)
                        : Icon(Icons.check_box_outline_blank),
                    3.width,
                    const Text(
                      'Ready State',
                      style: CustomStyle.p,
                    ),
                  ],
                ).onTap(() {
                  ref
                      .read(updateProjectStatusProvider.notifier)
                      .updateOperation(
                          fieldName: 'is_ready',
                          value:
                              (projectDetatils.ready ?? false) == false ? 1 : 0,
                          projectId: widget.projectId);
                }),
                12.height,

                const Text(
                  'System Type',
                  style: CustomStyle.p,
                ),
                6.height,
                ProviderHelperWidget(
                    function: (list) {
                      SiteStatusModel? getSystem(int id) {
                        try {
                          final item =
                              list.firstWhere((system) => system.id == id);
                          return item;
                        } catch (e) {}
                      }

                      return Wrap(
                        children: [
                          for (int element
                              in projectDetatils.system_types ?? [])
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              decoration: boxDecorationDefault(
                                  color: UiColors.primary
                                      .fromHex(getSystem(element)?.color)),
                              child: Text(
                                "${getSystem(element)?.title ?? "- - -"}",
                                style: CustomStyle.p
                                    .copyWith(color: UiColors.white),
                              ),
                            )
                        ],
                      );
                    },
                    listener: ref.watch(systemProjectListProvider)),
                12.height,
                // ItemWidget(
                //   title: 'Title',
                //   desc: '${projectDetatils.title}',
                // ),
                // 12.height,
                ItemWidget(
                  title: 'Deadline',
                  desc: '${projectDetatils.deadline}',
                ),
                12.height,
                ItemWidget(
                  title: 'labels',
                  desc: '${projectDetatils.labels}',
                ),
                12.height,
                ItemWidget(
                  title: 'Collection Date',
                  desc: '${projectDetatils.collection_date}',
                ),
                12.height,
                const DottedLine(
                  dashLength: 7,
                  dashGapLength: 3,
                  lineThickness: 1,
                  dashColor: Colors.grey,
                  dashGapColor: Colors.transparent,
                ),
                12.height,
                Container(
                  decoration: boxDecorationDefault(),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.fileInvoice,
                            color: UiColors.primary,
                          ),
                          5.width,
                          Text("Quotations"),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )
                    ],
                  ),
                ).onTap(() {
                  QuotationsView(projectId: widget.projectId).launch(context);
                }),

                12.height,
                const Row(
                  children: [
                    Text(
                      "Description:",
                      style: CustomStyle.p,
                    ),
                  ],
                ),
                8.height,
                Text("${projectDetatils.description}"),
                12.height,

                Container(
                  decoration: boxDecorationDefault(),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.history),
                          5.width,
                          Text("Activities log"),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )
                    ],
                  ),
                ).onTap(() {
                  ProjectActivityLog(
                    projectId: widget.projectId ?? 0,
                  ).launch(context);
                }),
                12.height,
                ProjectCommentView("${widget.projectId}"),
                // ProviderHelperWidget(
                //     function: (body) {
                //       return Text("$body");
                //     },
                //     listener: ref.watch(
                //         apiTesterProvider(url: EndPoints.projectStatusList))),
                // ProviderHelperWidget(
                //     function: (body) {
                //       return Text("$body");
                //     },
                //     listener: ref.watch(apiTesterProvider(
                //         url: EndPoints.projectComments(
                //             projectId: projectDetatils.id)))),
              ],
            );
          },
          listener:
              ref.watch(projectDetailsProvider(projectId: widget.projectId)));
    });
  }
}

class QuotationsView extends ConsumerWidget {
  const QuotationsView({
    super.key,
    required this.projectId,
  });

  final int projectId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Project Quotations",
          style: CustomStyle.p,
        ),
      ),
      body: ProviderHelperWidget(
          function: (list) {
            return list.isEmpty
                ? Center(
                    child:
                        Lottie.asset("assets/lottie/noData.json", width: 200))
                : Container(
                    decoration: boxDecorationDefault(),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: ListView(
                      children: [
                        for (var element in list)
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: boxDecorationDefault(),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(element.name.s),
                                    Text(element.estimate_date?.toDate())
                                  ],
                                ),
                                5.height,
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.download,
                                      color: UiColors.primary,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ).onTap(() {
                            downloadFile(
                                url: EndPoints.leadDownloadPdf(
                                    estimateId: element.id ?? 0),
                                fileName: "${element.name.s}.pdf");
                          })
                      ],
                    ),
                  );
          },
          listener:
              ref.watch(projectEstimateListProvider(projectId: projectId))),
    );
  }
}

class StatusWidget extends StatelessWidget {
  final String status;
  final String? color;
  const StatusWidget({
    super.key,
    required this.status,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3),
      decoration: boxDecorationDefault(
          color: UiColors.primary.fromHex(color),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          8.width,
          Text(
            status.capitalizeEachWord(),
            style: CustomStyle.lpMedium.copyWith(color: UiColors.white),
          ),
          5.width,
          const Icon(
            Icons.edit,
            color: UiColors.white,
            size: 15,
          ),
          8.width,
        ],
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final String title;
  final String desc;
  const ItemWidget({
    super.key,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$title:",
          style: CustomStyle.p,
        ),
        Text("$desc".capitalizeEachWord()),
      ],
    );
  }
}

Future<void> openMap(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
