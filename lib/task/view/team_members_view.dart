import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/row_button.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/controller/team_member_list_controller.dart';
import 'package:internal_app/home/model/member_model.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:searchable_listview/searchable_listview.dart';

class MemberListView extends StatefulWidget {
  final List<MemberModel> oldList;
  const MemberListView({
    super.key,
    required this.oldList,
  });

  @override
  State<MemberListView> createState() => _MemberListViewState();
}

class _MemberListViewState extends State<MemberListView> {
  @override
  void initState() {
    initData();
    super.initState();
  }

  List<MemberModel> members = [];

  initData() {
    members.addAll(widget.oldList);
  }

  addOrRemove(MemberModel member) {
    try {
      members.firstWhere((element) => element.id == member.id);
      members.removeWhere((element) => element.id == member.id);
    } catch (e) {
      members.add(member);
    }
    setState(() {});
  }

  bool isSelected(MemberModel mode) {
    try {
      members.firstWhere((element) => element.id == mode.id);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, w) {
      return ProviderHelperWidget(
          function: (teamMembers) {
            return Container(
              decoration: boxDecorationDefault(),
              height: 600,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: SearchableList<MemberModel>(
                      // shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      initialList: teamMembers,
                      itemBuilder: (MemberModel element) => InkWell(
                        onTap: () {
                          addOrRemove(element);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 6),
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: boxDecorationDefault(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${element.title}"),
                              isSelected(element)
                                  ? Icon(Icons.check_box)
                                  : Icon(Icons.check_box_outline_blank)
                            ],
                          ),
                        ),
                      ),
                      filter: (value) => teamMembers
                          .where((element) =>
                              (element.title?.toLowerCase().contains(value) ??
                                  false))
                          .toList(),
                      emptyWidget: Container(),
                      displaySearchIcon: false,
                      inputDecoration: editTextDecoration().copyWith(
                        prefixIcon: const Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: UiColors.white,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Select Team Members",
                              style: CustomStyle.p,
                            ),
                          ],
                        ),
                      ),
                      RowButton(
                        text: "Add",
                        onTap: () {
                          SmartDialog.dismiss(result: members);
                        },
                      )
                    ],
                  )
                  // ListView(children: [
                  //   TextEdit()
                  //   20.height,
                  //   for (var element in teamMembers)
                  //     InkWell(
                  //       onTap: () {
                  //         addOrRemove(element);
                  //       },
                  //       child: Container(
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 8, vertical: 6),
                  //         margin: const EdgeInsets.only(bottom: 12),
                  //         decoration: boxDecorationDefault(),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //             Text("${element.title}"),
                  //             isSelected(element)
                  //                 ? Icon(Icons.check_box)
                  //                 : Icon(Icons.check_box_outline_blank)
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   40.height
                  // ]),
                ],
              ),
            );
          },
          listener: ref.watch(getTeamMemberProvider));
    });
  }
}
