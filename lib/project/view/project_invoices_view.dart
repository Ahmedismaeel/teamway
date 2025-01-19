import 'dart:io';
import 'dart:typed_data';

import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_provider.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/project/controller/project_invoice_list_controller.dart';
import 'package:internal_app/project/view/pdf_view.dart';
import 'package:internal_app/project/view/web_view.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:path_provider/path_provider.dart';

class ProjectInvoicesView extends ConsumerWidget {
  final String projectId;
  const ProjectInvoicesView({
    super.key,
    required this.projectId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: UiColors.white,
      // appBar: AppBar(
      //   title: Text("Invoice List"),
      // ),
      body: ProviderHelperWidget(
          function: (list) {
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                final invoice = list[index];
                return Container(
                  decoration: boxDecorationDefault(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    children: [
                      Text(invoice.client_name.s),
                      12.height,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(invoice.due_date.toDate()),
                          const Icon(
                            FontAwesomeIcons.fileInvoice,
                            color: UiColors.primary,
                          )
                        ],
                      ),
                    ],
                  ),
                ).onTap(() async {
                  downloadFile(
                    fileName: "${invoice.client_name.s}.pdf",
                    url: EndPoints.downloadPdf(invoice.id ?? 0),
                  );

                  // WebViewPage(
                  //   url: EndPoints.downloadPdf(invoice.id ?? 0),
                  // ).launch(context);
                });
              },
            );
          },
          listener:
              ref.watch(projectInvoiceListProvider(projectId: projectId))),
    );
  }
}
