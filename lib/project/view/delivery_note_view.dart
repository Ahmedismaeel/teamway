import 'dart:io';
import 'dart:typed_data';

import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/project/controller/project_dno_list_controller.dart';
import 'package:internal_app/project/view/pdf_view.dart';
import 'package:internal_app/project/view/web_view.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:path_provider/path_provider.dart';

class DeliveryNoteModel extends ConsumerStatefulWidget {
  final int projectId;
  const DeliveryNoteModel(this.projectId, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DeliveryNoteModelState();
}

class _DeliveryNoteModelState extends ConsumerState<DeliveryNoteModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ProviderHelperWidget(
          function: (list) {
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                final dno = list[index];
                return Container(
                  decoration: boxDecorationDefault(),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  margin: EdgeInsets.only(bottom: 8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Id#",
                                style: CustomStyle.p
                                    .copyWith(color: UiColors.secondary),
                              ),
                              Text(dno.id.s)
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Invoice No#",
                                style: CustomStyle.p
                                    .copyWith(color: UiColors.primary),
                              ),
                              Text(dno.invoice_id.s)
                            ],
                          ),
                        ],
                      ),
                      8.height,
                      Text(
                        dno.client_name.s,
                        style: CustomStyle.p.copyWith(color: UiColors.primary),
                      )
                    ],
                  ),
                ).onTap(() async {
                  downloadFile(
                      fileName: "${dno.client_name}.pdf",
                      url: EndPoints.downLoadDeliveryNote(dno.id.i));

                  // WebViewPage(
                  //   url: EndPoints.downLoadDeliveryNote(dno.id.i),
                  // ).launch(context);
                });
              },
            );
          },
          listener:
              ref.watch(projectDnoListProvider(projectId: widget.projectId))),
    );
  }
}
