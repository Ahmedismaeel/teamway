import 'package:core/core.dart';
// import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/dialog_widget.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/string_to_color.dart';
import 'package:internal_app/global/shared/apis.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/builder_extention.dart';
// import 'package:internal_app/global/helper/string_to_color.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/row_button.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/model/member_model.dart';
import 'package:internal_app/leads/controller/leads_status_controller.dart';
import 'package:internal_app/leads/controller/update_lead_controller.dart';
import 'package:internal_app/leads/models/lead_model.dart';
import 'package:internal_app/leads/models/lead_source_model.dart';
import 'package:internal_app/leads/models/lead_status_model.dart';
import 'package:internal_app/leads/view/add_lead_view.dart';
import 'package:internal_app/leads/view/lead_details_view.dart';
import 'package:internal_app/project/view/task_filter_controller.dart';
import 'package:internal_app/project/view/task_filter_repo.dart';
// import 'package:internal_app/project/controller/project_activity_controller.dart';
// import 'package:internal_app/project/model/project_activity_log_model.dart';
import 'package:internal_app/task/view/team_members_view.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class LeadListView extends ConsumerStatefulWidget {
  const LeadListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LeadListViewState();
}

class _LeadListViewState extends ConsumerState<LeadListView> {
  static const _pageSize = 5;

  final PagingController<int, Content> _pagingController =
      PagingController(firstPageKey: 0);
  TextEditingController search = TextEditingController();
  @override
  void initState() {
    statusList = toObjectList(
        SharedPreferenceHelper.instance.leadStatusFilterList,
        LeadStatusModel.fromJson);
    members = toObjectList(
        SharedPreferenceHelper.instance.leadMembersFilterList,
        MemberModel.fromJson);
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final data = await EndPoints.leadsList(
              users: List.generate(members.length, (i) => members[i].id.i),
              source: source?.id,
              status:
                  List.generate(statusList.length, (i) => statusList[i].id.i),
              page: pageKey,
              size: _pageSize,
              search: search.text)
          .test();
      LeadModel body = LeadModel.fromJson(data[0]);
      final list = body.content ?? [];
      list.sort((a, b) {
        if (a.nextFollowUp == null || b.nextFollowUp == null) {
          return 0;
        }
        return a.nextFollowUp!.compareTo(b.nextFollowUp!);
      });
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

  List<LeadStatusModel> statusList = [];
  List<MemberModel> members = [];
  LeadSourceModel? source;
  @override
  Widget build(BuildContext context) => Scaffold(
        // appBar: AppBar(
        //   title: FormBuilderTextField(
        //     controller: search,
        //     cursorHeight: 20,
        //     cursorWidth: 1,
        //     decoration: editTextDecoration().copyWith(
        //       contentPadding:
        //           EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        //       hintText: "Enter your password",
        //       suffixIcon: InkWell(
        //         onTap: () {},
        //         child: const Icon(
        //           Icons.search,
        //           size: 22,
        //         ),
        //       ),
        //     ),
        //     name: 'password',
        //   ),
        //   actions: [
        //     const Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Icon(Icons.filter_alt),
        //     ).withBuilder(onTap: (context) async {
        //       List<Function> items = await myDialog(
        //           context,
        //           LeadFilterWidget(
        //             statusList: statusList,
        //             source: source,
        //             members: members,
        //           ));
        //       statusList = items[0]();
        //       members = items[1]();
        //       source = items[2]();

        //       _pagingController.refresh();
        //       setState(() {});
        //     })
        //   ],
        // ),

        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                AddLeadView().launch(context,
                    pageRouteAnimation: PageRouteAnimation.Fade);
              },
              child: Container(
                decoration: boxDecorationDefault(
                    shape: BoxShape.circle, color: UiColors.primary),
                padding: const EdgeInsets.all(12),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.add,
                      size: 30,
                      color: UiColors.white,
                    ),
                  ],
                ),
              ),
            ),
            80.height
          ],
        ),

        body: SafeArea(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RefreshIndicator(
                  onRefresh: () async {
                    _pagingController.refresh();
                    return;
                  },
                  child: CustomScrollView(
                    slivers: <Widget>[
                      SliverList.list(children: [
                        Text(
                          "",
                        ),
                        40.height,
                      ]),
                      // SliverAppBar(
                      //   collapsedHeight: 90,
                      //   toolbarHeight: 90,
                      //   leading: Container(),
                      //   elevation: 10,
                      //   // bottom: PreferredSize(
                      //   //   // Add this code
                      //   //   preferredSize: Size.fromHeight(10), // Add this code
                      //   //   child: Text(''), // Add this code
                      //   // ),
                      //   backgroundColor: Colors.white,
                      //   pinned: true,

                      //   flexibleSpace: Padding(
                      //       padding: const EdgeInsets.symmetric(
                      //         horizontal: 4,
                      //       ),
                      //       child: FlexibleSpaceBar(
                      //           background: Row(
                      //         children: [
                      //           SizedBox(
                      //             width: 280,
                      //             child: FormBuilderTextField(
                      //               controller: search,
                      //               cursorHeight: 20,
                      //               cursorWidth: 1,
                      //               decoration: editTextDecoration().copyWith(
                      //                 contentPadding: EdgeInsets.symmetric(
                      //                     horizontal: 12, vertical: 12),
                      //                 hintText: "Search by name and phone",
                      //                 suffixIcon: InkWell(
                      //                   onTap: () {
                      //                     _pagingController.refresh();
                      //                   },
                      //                   child: const Icon(
                      //                     Icons.search,
                      //                     size: 22,
                      //                   ),
                      //                 ),
                      //               ),
                      //               name: 'password',
                      //             ),
                      //           ),
                      //           const Padding(
                      //             padding: EdgeInsets.all(8.0),
                      //             child: Icon(Icons.filter_alt),
                      //           ).withBuilder(onTap: (context) async {
                      //             List<Function> items = await myDialog(
                      //                 context,
                      //                 LeadFilterWidget(
                      //                   statusList: statusList,
                      //                   source: source,
                      //                   members: members,
                      //                 ));
                      //             statusList = items[0]();
                      //             members = items[1]();
                      //             source = items[2]();

                      //             _pagingController.refresh();
                      //             setState(() {});
                      //           })
                      //         ],
                      //       ))),
                      // ),

                      PagedSliverList<int, Content>(
                        pagingController: _pagingController,
                        builderDelegate: PagedChildBuilderDelegate<Content>(
                          itemBuilder: (context, item, index) => LeadWidget(
                            item: item,
                            refresh: () {
                              _pagingController.refresh();
                            },
                          ).onTap(() {
                            LeadDetails(
                              leadId: item.id.toInt(),
                            ).launch(context,
                                pageRouteAnimation: PageRouteAnimation.Fade);
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: boxDecorationDefault(color: UiColors.white),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      // width: 280,
                      child: FormBuilderTextField(
                        controller: search,
                        cursorHeight: 20,
                        cursorWidth: 1,
                        onSubmitted: (v) {
                          _pagingController.refresh();
                        },
                        decoration: editTextDecoration().copyWith(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          hintText: "Search by name or phone",
                          suffixIcon: InkWell(
                            onTap: () {
                              hideKeyboard(context);
                              _pagingController.refresh();
                            },
                            child: const Icon(
                              Icons.search,
                              size: 22,
                            ),
                          ),
                        ),
                        name: 'search',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.filter_alt),
                    ).withBuilder(onTap: (context) async {
                      hideKeyboard(context);
                      List<Function> items = await myDialog(
                          context,
                          LeadFilterWidget(
                            statusList: statusList,
                            source: source,
                            members: members,
                          ));
                      statusList = items[0]();
                      await SharedPreferenceHelper.instance
                          .saveLeadStatusFilterList(toStringList(statusList));
                      members = items[1]();
                      await SharedPreferenceHelper.instance
                          .saveLeadMembersFilterList(toStringList(members));
                      source = items[2]();

                      _pagingController.refresh();
                      setState(() {});
                    })
                  ],
                ),
              )
            ],
          ),
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}

class LeadWidget extends StatelessWidget {
  final Function refresh;
  final Content item;
  const LeadWidget({
    required this.item,
    super.key,
    required this.refresh,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, w) {
      return Container(
        decoration: boxDecorationDefault(),
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                        width: 180,
                        child: Text(
                          (item.companyName.s),
                          style: CustomStyle.pBold
                              .copyWith(color: UiColors.primary),
                        ))
                  ],
                ),
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: boxDecorationDefault(
                        borderRadius: BorderRadius.circular(20),
                        color: UiColors.primary.fromHex(item.status?.color)),
                    child: Row(
                      children: [
                        Text((item.status?.title ?? "No Status"),
                            style: CustomStyle.lpMedium
                                .copyWith(color: UiColors.white)),
                        6.width,
                        Icon(
                          Icons.edit,
                          size: 15,
                        )
                      ],
                    )).withBuilder(onTap: (context) async {
                  final statusData = await CustomDialog.attachDialog(context,
                      widget: Container(
                        decoration: boxDecorationDefault(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        child: Column(
                          children: [
                            for (var status in InitApis.leadStatusList)
                              Container(
                                  width: 160,
                                  decoration: boxDecorationDefault(
                                    color: UiColors.primary
                                        .fromHex(status.color.s),
                                  ),
                                  margin: const EdgeInsets.all(6),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 6),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          status.title.s,
                                          style: CustomStyle.p
                                              .copyWith(color: UiColors.white),
                                        ),
                                      ])).onTap(() {
                                SmartDialog.dismiss(result: status);
                              })
                          ],
                        ),
                      ));
                  if (statusData != null) {
                    await ref
                        .read(updateLeadProvider.notifier)
                        .updateStatus(lead: item, status: statusData);
                    refresh();
                  }
                })
              ],
            ),
            3.height,
            8.height,
            Column(
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
                            image: (item.owner?.avatar).s,
                            radius: 50),
                        8.width,
                        Text((item.owner?.name ?? " -  -  -  -  - ")),
                      ],
                    ),
                    item.nextFollowUp?.toDate().isBefore(DateTime.now()) ==
                                true &&
                            item.nextFollowUp != "0000-00-00"
                        ? Container(
                            decoration: boxDecorationDefault(
                                color: UiColors.error,
                                borderRadius: BorderRadius.circular(100)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 1),
                            child: Text(
                              "${item.nextFollowUp ?? ""}",
                              style: TextStyle(color: UiColors.white),
                            ))
                        : Text("${item.nextFollowUp ?? ""}")
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}

class LeadFilterWidget extends ConsumerStatefulWidget {
  final List<LeadStatusModel> statusList;
  final List<MemberModel> members;
  final LeadSourceModel? source;
  LeadFilterWidget(
      {required this.statusList,
      required this.source,
      required this.members,
      super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LeadFilterWidgetState();
}

class _LeadFilterWidgetState extends ConsumerState<LeadFilterWidget> {
  List<LeadStatusModel> statusList = [];
  List<MemberModel> members = [];
  LeadSourceModel? source;
  @override
  void initState() {
    statusList = widget.statusList;
    members = widget.members;
    source = widget.source;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: boxDecorationDefault(),
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Builder(builder: (_) {
            return const FilterWidget(
              title: 'Select Status',
            ).onTap(() async {
              final _statusList = await CustomDialog.myDialog(_,
                  widget: SelectStatusWidget(
                    oldStatus: statusList,
                  ));
              if (_statusList != null) {
                statusList = _statusList;
                setState(() {});
              }
            });
          }),
          Wrap(
            children: [
              for (LeadStatusModel status in statusList)
                Container(
                  decoration: boxDecorationDefault(
                      borderRadius: BorderRadius.circular(50),
                      color: UiColors.primary.fromHex(status.color)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        status.title.s,
                        style: CustomStyle.p.copyWith(color: UiColors.white),
                      ),
                      6.width,
                      const Icon(
                        Icons.delete,
                        size: 18,
                        color: UiColors.black,
                      ).onTap(() {
                        statusList.remove(status);
                        setState(() {});
                      })
                    ],
                  ),
                )
            ],
          ),
          Builder(builder: (_) {
            return InkWell(
              child: FilterWidget(
                // color: source.,
                title: source?.title ?? 'Select Source',
              ).onTap(() async {
                "Click".log();
                final _source = await myDialog(_, SelectSourceWidget());

                if (_source != null) {
                  source = _source;
                  setState(() {});
                }
              }),
            );
          }),
          FilterWidget(
            title: 'Select Memeber',
          ).onTap(() async {
            List<MemberModel>? memberList = await SmartDialog.show(
                animationType: SmartAnimationType.fade,
                builder: (BuildContext context) {
                  return MemberListView(
                    oldList: members,
                  );
                });

            if (memberList != null) {
              members = memberList;
              setState(() {});
            }
          }),
          Wrap(
            children: [
              for (MemberModel member in members)
                Container(
                  decoration: boxDecorationDefault(),
                  margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(member.title.s),
                      8.width,
                      Icon(
                        Icons.delete,
                        size: 19,
                      ).onTap(() {
                        members.remove(member);
                        setState(() {});
                      })
                    ],
                  ),
                )
            ],
          ),
          16.height,
          RowButton(
            text: "Filter",
            onTap: () {
              SmartDialog.dismiss(
                  result: [() => statusList, () => members, () => source]);
            },
          )
        ],
      ),
    );
  }
}

class SelectStatusWidget extends StatefulWidget {
  final List<LeadStatusModel> oldStatus;
  const SelectStatusWidget({
    super.key,
    required this.oldStatus,
  });

  @override
  State<SelectStatusWidget> createState() => _SelectStatusWidgetState();
}

class _SelectStatusWidgetState extends State<SelectStatusWidget> {
  List<LeadStatusModel> statusList = [];

  @override
  void initState() {
    // TODO: implement initState

    statusList = widget.oldStatus;
    super.initState();
  }

  addOrRemove(LeadStatusModel member) {
    try {
      statusList.firstWhere((element) => element.id == member.id);
      statusList.removeWhere((element) => element.id == member.id);
    } catch (e) {
      statusList.add(member);
    }
    setState(() {});
  }

  bool isSelected(LeadStatusModel mode) {
    try {
      statusList.firstWhere((element) => element.id == mode.id);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, w) {
      return ProviderHelperWidget(
        loadingShape: Container(
            padding: const EdgeInsets.all(9),
            decoration: boxDecorationDefault(),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                // width: 140,
                decoration: boxDecorationDefault(
                    color: UiColors.primary, border: Border.all()),
                margin: const EdgeInsets.all(6),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: const Row(
                  children: [
                    Text("loading"),
                  ],
                ),
              ),
            ])),
        function: (list) {
          return Container(
            padding: const EdgeInsets.all(9),
            decoration: boxDecorationDefault(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (LeadStatusModel status in list)
                  Container(
                    // width: 160,
                    decoration: boxDecorationDefault(
                      color: UiColors.primary.fromHex(status.color.s),
                    ),
                    margin: const EdgeInsets.all(6),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          status.title.s,
                          style: CustomStyle.p.copyWith(color: UiColors.white),
                        ),
                        isSelected(status)
                            ? Icon(Icons.check_box, color: UiColors.white)
                            : Icon(Icons.check_box_outline_blank,
                                color: UiColors.white)
                      ],
                    ),
                  ).onTap(() {
                    addOrRemove(status);
                  }),
                12.height,
                RowButton(
                  text: "Confirm",
                  onTap: () {
                    SmartDialog.dismiss(result: statusList);
                  },
                )
              ],
            ),
          );
        },
        listener: ref.watch(leadStatusListProvider),
      );
    });
  }
}

class SelectSourceWidget extends ConsumerWidget {
  const SelectSourceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderHelperWidget(
      loadingShape: Container(
          padding: EdgeInsets.all(9),
          decoration: boxDecorationDefault(),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              width: 300,
              decoration: boxDecorationDefault(
                  color: UiColors.primary, border: Border.all()),
              margin: const EdgeInsets.all(6),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Row(
                children: [
                  Text("loading"),
                ],
              ),
            ),
          ])),
      function: (list) {
        return Container(
          padding: EdgeInsets.all(9),
          decoration: boxDecorationDefault(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (LeadSourceModel status in list)
                Container(
                  width: 300,
                  decoration: boxDecorationDefault(
                    color: UiColors.white,
                    // border: Border.all()
                  ),
                  margin: const EdgeInsets.all(6),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: [
                      Text(
                        status.title.s,
                        style: CustomStyle.p.copyWith(color: UiColors.primary),
                      ),
                    ],
                  ),
                ).onTap(() {
                  SmartDialog.dismiss(result: status);
                })
            ],
          ),
        );
      },
      listener: ref.watch(leadSourceListProvider),
    );
  }
}

class FilterWidget extends StatelessWidget {
  final String title;
  final String? color;
  const FilterWidget({
    super.key,
    required this.title,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecorationDefault(
          color: color == null ? null : UiColors.primary.fromHex(color!),
          border: Border.all()),
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), 4.width, Icon(Icons.arrow_drop_down)],
      ),
    );
  }
}

Future<void> makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}

Future<void> openWhatsapp(String phoneNumber) async {
  if (!await launchUrl(Uri(scheme: 'https', path: "wa.me/$phoneNumber"))) {
    throw Exception('Could not launch https://wa.me/$phoneNumber');
  }
}
