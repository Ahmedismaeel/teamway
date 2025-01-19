import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/model/project_model.dart';
import 'package:internal_app/project/view/project_details_view.dart';
import 'package:internal_app/project/controller/get_project_list_controller.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:searchable_listview/searchable_listview.dart';
import 'package:tab_container/tab_container.dart';

class ProjectView extends ConsumerWidget {
  final bool isSelect;
  const ProjectView({
    super.key,
    required this.isSelect,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "Project List",
        //   ),
        //   actions: [
        //     isSelect
        //         ? InkWell(
        //             onTap: () {
        //               SmartDialog.dismiss();
        //             },
        //             child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Icon(Icons.cancel),
        //             ),
        //           )
        //         : SizedBox.shrink()
        //   ],
        // ),
        extendBody: true,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
            child: ProviderHelperWidget(
                loadingShape: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const ProjectWidget(
                        project: ProjectModel(id: 1, title: "title"));
                  },
                ),
                function: (list) {
                  return SearchableList<ProjectModel>(
                    initialList: list,
                    itemBuilder: (ProjectModel project) => InkWell(
                        onTap: () {
                          isSelect
                              ? SmartDialog.dismiss(result: project)
                              : ProjectDetailsView(
                                  projectId: project.id ?? 0,
                                ).launch(context,
                                  pageRouteAnimation: PageRouteAnimation.Fade);
                        },
                        child: ProjectWidget(project: project)),
                    filter: (value) => list
                        .where(
                          (element) =>
                              (element.title?.toLowerCase().contains(value) ??
                                  false) ||
                              (element.client_phone
                                      ?.toLowerCase()
                                      .contains(value) ??
                                  false),
                        )
                        .toList(),
                    emptyWidget: Container(),
                    displaySearchIcon: false,
                    inputDecoration: editTextDecoration().copyWith(
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                    ),
                  );
                },
                listener: ref.watch(getProjectListProvider)),
          ),
        ));
  }
}

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    super.key,
    required this.project,
  });

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: boxDecorationDefault(),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.workspaces_outlined,
                color: UiColors.secondary,
              ),
              13.width,
              SizedBox(
                width: 220,
                child: Text(
                  "${project.title}",
                  style: CustomStyle.p18.copyWith(color: UiColors.primary),
                ),
              ),
            ],
          ),
          8.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Client Phone Number",
                style: CustomStyle.lpMedium.copyWith(color: UiColors.primary),
              ),
              Text("${project.client_phone}")
            ],
          )
        ],
      ),
    );
  }
}
