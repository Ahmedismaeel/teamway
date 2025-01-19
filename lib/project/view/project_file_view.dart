import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/project/controller/get_project_file_controller.dart';
import 'package:internal_app/project/view/add_file_view.dart';
import 'package:internal_app/project/view/pdf_view.dart';
import 'package:nb_utils/nb_utils.dart';

class ProjectFilesView extends ConsumerWidget {
  final String projectId;
  const ProjectFilesView(this.projectId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () async {
          AddProjectFileView(projectId)
              .launch(context, pageRouteAnimation: PageRouteAnimation.Fade);
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
      backgroundColor: UiColors.white,
      body: ProviderHelperWidget(
        function: (list) {
          return ListView(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  final file = list[index];
                  return Container(
                    decoration: boxDecorationDefault(),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    margin: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(file.created_at.toDate()),
                            Row(
                              children: [
                                CacheImage(
                                    height: 30,
                                    width: 30,
                                    image: file.uploaded_by_user_avatar.s,
                                    radius: 100),
                                4.width,
                                Text(file.uploaded_by_user_name.s)
                              ],
                            ),
                          ],
                        ),
                        8.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(FontAwesomeIcons.file),
                            // 1.width,
                            SizedBox(
                                width: 220, child: Text(file.file?.name ?? "")),
                            const Icon(
                              FontAwesomeIcons.download,
                              color: UiColors.primary,
                            ).onTap(() async {
                              final url = file.file?.url ?? "";
                              downloadFile(
                                  fileName:
                                      url.substring(url.lastIndexOf("/") + 1),
                                  url: url);
                            })
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
              80.height,
            ],
          );
        },
        listener: ref.watch(projectFileListProvider(projectId: projectId)),
      ),
    );
  }
}
