import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/bottom_navigator.dart';
import 'package:internal_app/leads/controller/lead_by_id_controller.dart';
import 'package:internal_app/leads/controller/lead_estimate_controller.dart';
import 'package:internal_app/leads/controller/update_lead_controller.dart';
import 'package:internal_app/leads/models/lead_model.dart';
import 'package:internal_app/leads/view/comment_view.dart';
import 'package:internal_app/leads/view/edit_lead_view.dart';
import 'package:internal_app/leads/view/leads_list_view.dart';
import 'package:internal_app/project/view/pdf_view.dart';
import 'package:nb_utils/nb_utils.dart';

class LeadDetails extends ConsumerWidget {
  final int leadId;
  const LeadDetails({
    super.key,
    required this.leadId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope(
      canPop: Navigator.canPop(context),
      onPopInvoked: (s) {
        HomeNavigatorView().launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    } else {
                      const HomeNavigatorView().launch(context,
                          isNewTask: true,
                          pageRouteAnimation: PageRouteAnimation.Fade);
                    }
                  },
                  child: const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back_ios),
                  )),
              const Text("Lead Details"),
              12.width
            ],
          ),
          actions: [
            ProviderHelperWidget(
                loadingShape: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.edit),
                ),
                function: (lead) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.edit),
                  ).onTap(() {
                    EditLeadView(lead).launch(context,
                        pageRouteAnimation: PageRouteAnimation.Fade);
                  });
                },
                listener: ref.watch(getLeadByIdProvider(leadId: leadId)))
          ],
        ),
        body: Consumer(builder: (_, ref, w) {
          return ProviderHelperWidget(
              function: (lead) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: ListView(
                    children: [
                      LeadWidget(
                        item: lead,
                        refresh: () {},
                      ),
                      12.height,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text("Duo Date:"),
                              6.height,
                              Container(
                                decoration: boxDecorationDefault(),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 9, vertical: 4),
                                child: Row(
                                  children: [
                                    Text(lead.nextFollowUp ?? "Empty"),
                                    4.width,
                                    const Icon(
                                      Icons.edit,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ).onTap(() async {
                                final date = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: lead.nextFollowUp?.toDate() ??
                                        DateTime.now(),
                                    lastDate: DateTime(2222));
                                if (date == null) {
                                  return;
                                }
                                date.toDate().toString().log();
                                await ref
                                    .read(updateLeadProvider.notifier)
                                    .updateFollowUpDate(
                                        lead: lead,
                                        followUpDate: date.toDate());
                              }),
                            ],
                          ),
                          Row(
                            children: [
                              Card(
                                child: Image.asset(
                                  "assets/images/whatsapp.png",
                                  width: 30,
                                ),
                              ).onTap(() {
                                "makePhoneCall".log();
                                openWhatsapp(lead.phone.s);
                              }),
                              16.width,
                              Card(
                                child: Image.asset(
                                  "assets/images/phone.png",
                                  width: 30,
                                ),
                              ).onTap(() {
                                "makePhoneCall".log();
                                makePhoneCall(lead.phone.s);
                              })
                            ],
                          )
                        ],
                      ),
                      12.height,
                      const Row(
                        children: [
                          Text(
                            "Lead Quotations:",
                            style: CustomStyle.p,
                          )
                        ],
                      ),
                      12.height,
                      ProviderHelperWidget(
                          function: (list) {
                            return Column(
                              children: [
                                for (var element in list)
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    decoration: boxDecorationDefault(),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 8),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(element.name.s),
                                            Text(element.estimate_date.toDate())
                                          ],
                                        ),
                                        5.height,
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
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
                            );
                          },
                          listener: ref
                              .watch(leadEstimateListProvider(leadId: leadId))),
                      LeadCommentView(lead.id.s),
                    ],
                  ),
                );
              },
              listener: ref.watch(getLeadByIdProvider(leadId: leadId)));
        }),
      ),
    );
  }
}
